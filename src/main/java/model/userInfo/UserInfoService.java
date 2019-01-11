package model.userInfo;

import java.util.Arrays;
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
		if(tdao.finduser(user) != null) {
			tdao.finduser(user);
//			userorderinfo.add(e);
		}
		return userorderinfo;
	}
	
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

}
