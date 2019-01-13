package model.userInfo;

import java.util.Arrays;
import java.util.List;

import org.hibernate.mapping.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.tour.dao.TourOrderInfoDAO;

@Service
public class UserInfoService {
	
	@Autowired
    private UserInfoDAO userInfoDAO = null;
	@Autowired
	private TourOrderInfoDAO tdao = null;
	
	
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
	//--------------↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 01_01 Controller↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑-------------	

	
	//--------------↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 01_02 Controller↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑-------------	
}
