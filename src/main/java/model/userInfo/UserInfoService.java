package model.userInfo;

import java.sql.Timestamp;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.hotel.HotelOrderDetailsBean;
import model.hotel.HotelOrderDetailsService;
import model.ticket.TicketInfoBean;
import model.ticket.TicketInfoDAO;
import model.ticket.TicketOrderInfoBean;
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



	
//	public UserInfoBean login(String accountName, String password) {
//		UserInfoBean bean = userInfoDAO.findByPrimaryKey(accountName);
//		if(bean!=null) {
//			if(password!=null && password.length()!=0) {
//				byte[] temp = password.getBytes();	//使用者輸入
//				byte[] pass = bean.getPassword();	//資料庫抓出
//				if(Arrays.equals(temp, pass)) {
//					return bean;
//				}
//			}
//		}
//		return null;
//	}
	

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
		Timestamp updateTime = new Timestamp(System.currentTimeMillis()); // TODO: set update time = now
		userInfoDAO.update(bean.getAccountName(),bean.getPassword(), bean.getFirstname(), bean.getLastname(), bean.getIdentityNo(),bean.getEmail(),
				bean.getBirth(),bean.getSex(),bean.getPhone(),bean.getAddress(),bean.getAuthority(),bean.getGorfb(),bean.getLoginId(),updateTime);
	return bean;
	}
	
	public UserInfoBean gorfbLoginUpdateTime(String loginId) {
		UserInfoBean bean = userInfoDAO.findByLoginId(loginId);
		if(bean!=null) {
		
		Timestamp updateTime = new Timestamp(System.currentTimeMillis()); // TODO: set update time = now
		userInfoDAO.update(bean.getAccountName(),bean.getPassword(), bean.getFirstname(), bean.getLastname(), bean.getIdentityNo(),bean.getEmail(),
				bean.getBirth(),bean.getSex(),bean.getPhone(),bean.getAddress(),bean.getAuthority(),bean.getGorfb(),bean.getLoginId(),updateTime);
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
		if(bean != null) {
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
	// --------------↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 01_01 Controller↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑-------------

	public Map<String, List<?>> findByPrimaryKey(String user) {

		Map<String, List<?>> map = new HashMap<String, List<?>>();

		UserInfoBean result = userInfoDAO.findByPrimaryKey(user);

		List<TourOrderInfoBean> tourInfo = tourOrderInfoService.foundOrderaccountName(user);
		List<TourBatchBean> tourBatch = tourBatchDAO.findByTourOrderList(tourInfo);
		List<GroupTourBean> tourList = groupTourDAO.findByTourBatchList(tourBatch);
		System.out.println(tourInfo);
		System.out.println(tourBatch);
		System.out.println(tourList);
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

						System.out.println(tourOrder);
					}
					continue;
				}
			}
		}

		for (TicketInfoBean ticketInfoBean : ticketList) {
			for (TicketOrderInfoBean ticketOrderInfoBean : ticketInfo) {
				if (ticketInfoBean.getTicketNo() == ticketOrderInfoBean.getTicketNo()) {
					ticketOrderInfoBean.setTicketName(ticketInfoBean.getTicketName());
					break;
				}
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
	// --------------↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 01_02 Controller↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑-------------
}
