package controller.User;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoService;

@Controller
@SessionAttributes(value="user")
public class LoginController {

	@Autowired
	UserInfoService userInfoService;
	
	@ResponseBody
	@RequestMapping(path = { "/secure/login.controller" })
	public UserInfoBean method(String name, String password) {
		Map<String, String> errors = new HashMap<>();
		System.out.println("name="+name);
		System.out.println("password="+password);
		UserInfoBean bean = userInfoService.login(name, password);
		System.out.println(bean);
		
		return bean;
	}
}