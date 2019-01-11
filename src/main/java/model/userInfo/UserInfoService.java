package model.userInfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.ticket.TicketOrderInfoDAO;

@Service
public class UserInfoService {
	
	@Autowired
    private UserInfoDAO userInfoDAO = null;
	@Autowired
	private TicketOrderInfoDAO tdao = null;
	
//--------------↓↓↓↓↓↓後台使用專區↓↓↓↓↓↓-------------
	public List<UserInfoBean> findByAccountName (String user) {
	
		List<UserInfoBean> uba = userInfoDAO.findByaccountName(user);
		
				return uba;
	}

	public List<UserInfoBean> findByPhone (String user) {
		
		List<UserInfoBean> ubp = userInfoDAO.findByphone(user);
		
				return ubp;
	}
	
	public List<UserInfoBean> findAll() {
		
		List<UserInfoBean> result = userInfoDAO.findAll();
		
		return result;
		}	
	
	public List<UserInfoBean> findByuserOrderInfo(String user){
		
		List<UserInfoBean> userorderinfo = userInfoDAO.findByaccountName(user);
		System.out.println(userorderinfo);
		
//		if()
//		String ticketname = ticketOrderInfoDAO.foundName(ticketNo);
		return userorderinfo;
	}
}
