package model.userInfo;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.hotel.HotelOrderDetailsBean;
import model.hotel.HotelOrderDetailsService;
import model.rate.RateNoticeBean;
import model.rate.RateNoticeDAO;
import model.ticket.TicketInfoBean;
import model.ticket.TicketInfoDAO;
import model.ticket.TicketOrderInfoBean;
import model.ticket.TicketOrderInfoDAO;
import model.ticket.TicketOrderInfoService;
import model.tour.GroupTourBean;
import model.tour.TourBatchBean;
import model.tour.TourOrderInfoBean;
import model.tour.dao.GroupTourDAO;
import model.tour.dao.TourBatchDAO;
import model.tour.service.TourOrderInfoService;

@Service
public class UserInfoService {

	@Autowired
	private UserInfoDAO userInfoDAO = null;
	@Autowired
	private TourOrderInfoService tourOrderInfoService;
	@Autowired
	private TicketOrderInfoService ticketOrderInfoService;
	@Autowired
	private HotelOrderDetailsService hotelOrderDetailsService;
	@Autowired
	private GroupTourDAO groupTourDAO;
	@Autowired
	private TicketInfoDAO ticketInfoDAO;
	@Autowired
	private TourBatchDAO tourBatchDAO;
	@Autowired
	private RateNoticeDAO rateNoticeDAO;
	@Autowired
	private TicketOrderInfoDAO ticketOrderInfoDAO;

	public UserInfoBean login(String accountName, String password) {
		UserInfoBean bean = userInfoDAO.findByPrimaryKey(accountName);
		if (bean != null) {
			if (password != null && password.length() != 0) {
				byte[] temp = password.getBytes(); // 使用者輸入
				byte[] pass = bean.getPassword(); // 資料庫抓出
				if (Arrays.equals(temp, pass)) {
					return bean;
				}
			}
		}
		return null;
	}

	public UserInfoBean normalLoginUpdateTime(String accountName) {
		UserInfoBean bean = userInfoDAO.findByPrimaryKey(accountName);
		Timestamp updateTime = new Timestamp(System.currentTimeMillis());
		userInfoDAO.update(bean.getAccountName(), bean.getPassword(), bean.getFirstname(), bean.getLastname(),
				bean.getIdentityNo(), bean.getEmail(), bean.getBirth(), bean.getSex(), bean.getPhone(),
				bean.getAddress(), bean.getAuthority(), bean.getGorfb(), bean.getLoginId(), updateTime);
		return bean;
	}

	public UserInfoBean gorfbLoginUpdateTime(String loginId) {
		UserInfoBean bean = userInfoDAO.findByLoginId(loginId);
		System.out.println("bean=" + bean);
		if (bean != null) {
			System.out.println(" in loginId=" + loginId);
			Timestamp updateTime = new Timestamp(System.currentTimeMillis());
			userInfoDAO.update(bean.getAccountName(), bean.getPassword(), bean.getFirstname(), bean.getLastname(),
					bean.getIdentityNo(), bean.getEmail(), bean.getBirth(), bean.getSex(), bean.getPhone(),
					bean.getAddress(), bean.getAuthority(), bean.getGorfb(), bean.getLoginId(), updateTime);
		}
		return bean;
	}

	public RateNoticeBean rateNotice(String accountName) {
		RateNoticeBean bean = rateNoticeDAO.find(accountName);
		System.out.println("bean=" + bean);
		if (bean != null) {
			System.out.println(" in accountName=" + accountName);
		}
		return bean;
	}
//	public UserInfoBean changePassword(String username, String oldPassword, String newPassword) {
//		UserInfoBean bean = this.login(username, oldPassword);
//		if(bean!=null) {
//			if (newPassword!=null && newPassword.length()!=0) {
//				byte[] temp = newPassword.getBytes();
//				return userInfoDAO.update(temp, bean.getFirstname(), bean.getLastname(), bean.getIdentityNo(),bean.getEmail(),
//						bean.getBirth(),bean.getSex(),bean.getPhone(),bean.getAddress(),bean.getAuthority(),bean.getGorfb(),bean.getLoginId(),username);
//			}
//		}
//		return bean;
//	}

	public UserInfoBean create(UserInfoBean bean) {
		UserInfoBean result = null;
		if (bean != null) {
			result = userInfoDAO.create(bean);
//			System.out.println("result");
		}
		return result;

	}
//--------------↓↓↓↓↓↓後台管理員使用專區↓↓↓↓↓↓-------------

	public UserInfoBean findByAccountName(String user) {

		UserInfoBean result = userInfoDAO.findByPrimaryKey(user);

		return result;
	}

	public UserInfoBean findByPhone(String user) {

		UserInfoBean ubp = userInfoDAO.findByphone(user);

		return ubp;
	}

	public List<UserInfoBean> findAll() {

		List<UserInfoBean> result = userInfoDAO.findAll();

		return result;
	}
	// --------------↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 01_01
	// Controller↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑-------------

	public Map<String, List<?>> findByPrimaryKey(String user) {

		Map<String, List<?>> map = new HashMap<String, List<?>>();

		UserInfoBean result = userInfoDAO.findByPrimaryKey(user);

		List<TourOrderInfoBean> tourInfo = tourOrderInfoService.foundOrderaccountName(user);
		List<TourBatchBean> tourBatch = tourBatchDAO.findByTourOrderList(tourInfo);
		List<GroupTourBean> tourList = groupTourDAO.findByTourBatchList(tourBatch);
//		System.out.println(tourInfo);
//		System.out.println(tourBatch);
//		System.out.println(tourList);
		System.out.println("==================");

		List<TicketOrderInfoBean> ticketInfo = ticketOrderInfoService.foundOrderaccountName(user);
		List<TicketInfoBean> ticketList = ticketInfoDAO.findByTicketOrderList(ticketInfo);

		List<HotelOrderDetailsBean> HotelInfo = hotelOrderDetailsService.foundOrderaccountName(user);

		for (GroupTourBean groupTourBean : tourList) {
			for (TourBatchBean tourBatchBean : tourBatch) {
				for (TourOrderInfoBean tourOrder : tourInfo) {

					if ((groupTourBean.getTourNo().equals(tourBatchBean.getTourNo()))
							&& (tourBatchBean.getSerialNo().equals(tourOrder.getSerialNo()))) {

						tourBatchBean.setTourName(groupTourBean.getTourName());
						tourOrder.setTourName(tourBatchBean.getTourName());

//						System.out.println(tourOrder);
					}
					continue;
				}
			}
		}

		for (TicketInfoBean ticketInfoBean : ticketList) {
			for (TicketOrderInfoBean ticketOrderInfoBean : ticketInfo) {
				if (ticketInfoBean.getTicketNo() == ticketOrderInfoBean.getTicketNo()) {
					ticketOrderInfoBean.setTicketName(ticketInfoBean.getTicketName());
					System.out.println(ticketOrderInfoBean);
				}
				continue;
			}
		}

		if (tourInfo.size() > 0) {
			map.put("TourOrderInfoBean", tourInfo);
		}
		if (ticketInfo.size() > 0) {
			map.put("TicketOrderInfoBean", ticketInfo);
		}
		if (HotelInfo.size() > 0) {
			map.put("HotelOrderDetailsBean", HotelInfo);
		}

		System.out.println(result);

		return map;
	}
	// --------------↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 01_02
	// Controller↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑-------------

	// --------------↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 02_01
	// Controller↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓-------------
	public HSSFWorkbook export(String[] titles, ServletOutputStream out, Integer month) throws Exception {

		// 第一步，創建一個workbook，對應一個Excel文檔
		HSSFWorkbook workbook = new HSSFWorkbook();
		// 第二步，在webbook中添加一個sheet,對應Excel文檔中的sheet
		HSSFSheet hssfSheet = workbook.createSheet("sheet1");
		// 第三步，在sheet中添加表頭第0行,注意老版本poi對Excel的行數列數有限制short
		HSSFRow hssfRow = hssfSheet.createRow(0);
		// 第四步，創建單元格，並設置值表頭 設置表頭居中
		HSSFCellStyle hssfCellStyle = workbook.createCellStyle();
		// 居中樣式
//	             hssfCellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);

		HSSFCell hssfCell = null;
		for (int i = 0; i < titles.length; i++) {
			hssfCell = hssfRow.createCell(i);// 列索引從0開始
			hssfCell.setCellValue(titles[i]);// 列名1
			hssfCell.setCellStyle(hssfCellStyle);// 列居中顯示
		}

		// 第五步，寫入實體數據

		List<TourOrderInfoBean> users = tourOrderInfoService.findBuyMonth(month);

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if (users != null && !users.isEmpty()) {
			for (int i = 0; i < users.size(); i++) {
				hssfRow = hssfSheet.createRow(i + 1);
				TourOrderInfoBean user = users.get(i);
				// 第六步，創建單元格，並設置值
				String userCountry = "";
				if (user.getCountry() != null) {
					userCountry = user.getCountry();
					System.out.println(userCountry);
				}
				hssfRow.createCell(0).setCellValue(userCountry);

				String userTourName = "";
				if (user.getTourName() != null) {
					userTourName = user.getTourName();
				}
				hssfRow.createCell(1).setCellValue(userTourName);

				int quantity = 0;
				if (user.getQuantity() != null) {
					quantity = user.getQuantity();
				}
				hssfRow.createCell(2).setCellValue(quantity);

				java.util.Date Date = new java.util.Date();
				if (user.getOrderTime() != null) {
					Date = user.getOrderTime();
				}
				hssfRow.createCell(3).setCellValue(Date);

				int total = 0;
				if (user.getTotal() != 0) {
					total = user.getTotal();
				}
				hssfRow.createCell(4).setCellValue(total);
			}

		}
		return workbook;
	}
}
//	              第七步，將文檔輸出到客户端瀏覽器

//	             try {
//	                 workbook.write(out);
//	                 out.flush();
//	                 out.close();
//	             } catch (Exception e) {
//	                 e.printStackTrace();
//	             }
//	         }catch(Exception e){
//	             e.printStackTrace();
//	             throw new Exception("導出信息失敗！");
//	         }    
//	     }
//}
