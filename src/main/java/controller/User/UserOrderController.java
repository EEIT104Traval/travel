package controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoService;

public class UserOrderController {
	@Autowired
	UserInfoService userInfoService;
	
	@RequestMapping(path= {"/voyage/userorder.controller"})
	public UserInfoBean getMemberOrder(String accountName) {
		UserInfoBean bean = userInfoService.getMemberOrder(accountName);
	
	return bean;
	}
}
