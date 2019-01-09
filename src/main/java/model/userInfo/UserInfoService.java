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
	public UserInfoBean findByUser (String user) {
	
		UserInfoBean uba = userInfoDAO.findByaccountName(user);
		UserInfoBean ubp = userInfoDAO.findByPhone(user);
		
		if(!StringUtils.isEmpty(user)) {
			if(user.equals(uba.getAccountName())) {
				return uba;
			}
		}
		return ubp;
	}

	public List<UserInfoBean> findAll() {
		

		List<UserInfoBean> result = userInfoDAO.findAll();
			if (result != null) {
				result = new ArrayList<UserInfoBean>();
				result.addAll(result);
								}
		return result;
	}
}
