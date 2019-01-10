package model.userInfo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

@Service
public class UserInfoService {
	@Autowired
    private UserInfoDAO userInfoDAO = null;
	
	
	
	
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
}
