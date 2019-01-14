package model.userInfo;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.hotel.HotelOrderDetailsBean;
import model.hotel.HotelOrderDetailsService;
import model.ticket.TicketInfoBean;
import model.ticket.TicketInfoDAO;
import model.ticket.TicketOrderInfoBean;
import model.ticket.TicketOrderInfoService;
import model.tour.GroupTourBean;
import model.tour.TourOrderInfoBean;
import model.tour.dao.GroupTourDAO;
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


	
	public UserInfoBean login(String accountName, String password) {
		UserInfoBean bean = userInfoDAO.findByPrimaryKey(accountName);
		if(bean!=null) {
			if(password!=null && password.length()!=0) {
				byte[] temp = password.getBytes();	//使用者輸入
				byte[] pass = bean.getPassword();	//資料庫抓出
				if(Arrays.equals(temp, pass)) {
					return bean;
				}
			}
		}
		return null;
	}
	public UserInfoBean changePassword(String username, String oldPassword, String newPassword) {
		UserInfoBean bean = this.login(username, oldPassword);
		if(bean!=null) {
			if (newPassword!=null && newPassword.length()!=0) {
				byte[] temp = newPassword.getBytes();
				return userInfoDAO.update(temp, bean.getFirstname(), bean.getLastname(), bean.getIdentityNo(),bean.getEmail(),
						bean.getBirth(),bean.getSex(),bean.getPhone(),bean.getAddress(),bean.getAuthority(),bean.getGorfb(),bean.getLoginId(),username);
			}
		}
		return bean;
	}
//--------------↓↓↓↓↓↓後台管理員使用專區↓↓↓↓↓↓-------------
	
	
	public UserInfoBean findByAccountName (String user) {
	
		UserInfoBean result = userInfoDAO.findByPrimaryKey(user);

		return result;
	}
	
	public UserInfoBean findByPhone (String user) {
		
		UserInfoBean ubp = userInfoDAO.findByphone(user);
		
		return ubp;
	}
	
	public List<UserInfoBean> findAll() {
		
		List<UserInfoBean> result = userInfoDAO.findAll();
		
		return result;
	}	
	//--------------↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 01_01 Controller↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑-------------	
	@Autowired
	private GroupTourDAO groupTourDAO;
	@Autowired
	private TicketInfoDAO ticketInfoDAO;
	
	public Map<String, List<?>> findByPrimaryKey(String user) {
		
		Map<String, List<?>> map = new HashMap<String, List<?>>();
		
		UserInfoBean result = userInfoDAO.findByPrimaryKey(user);
															
		List<TourOrderInfoBean> TourInfo = tourOrderInfoService.foundOrderaccountName(user);
		List<GroupTourBean> tourList = groupTourDAO.findByTourOrderList(TourInfo);
		
		List<TicketOrderInfoBean> TicketInfo = ticketOrderInfoService.foundOrderaccountName(user);
		List<TicketInfoBean> ticketList = ticketInfoDAO.findByTicketOrderList(TicketInfo);
				
		List<HotelOrderDetailsBean> HotelInfo = hotelOrderDetailsService.foundOrderaccountName(user);
		
		if (TourInfo.size()>0) {
			map.put("TourOrderInfoBean", TourInfo);
		}
		if(tourList.size()>0) {
			map.put("tourList", tourList);
		}
		if (TicketInfo.size()>0) {
			map.put("TicketOrderInfoBean", TicketInfo);
		}
		if(ticketList.size()>0) {
			map.put("ticketList", ticketList);
		}
		if (HotelInfo.size()>0) {
			map.put("HotelOrderDetailsBean", HotelInfo);
		}
		
		
		
		System.out.println(result);
		
		return map;
	}
	//--------------↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 01_02 Controller↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑-------------	
}
