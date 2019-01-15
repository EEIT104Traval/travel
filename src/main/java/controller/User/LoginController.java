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
	@RequestMapping(path= {"/secure/insert.controller"})
	public void insertMb () {
		
	}
	
	@ResponseBody
	@RequestMapping(path = { "/secure/login.controller" })
	public UserInfoBean method(String name, String password) {
		Map<String, String> errors = new HashMap<>();
		model.addAttribute("errors", errors);
		if (name == null || name.length() == 0) {
//			errors.put("xxx1", context.getMessage("name",null, locale));
		}
		if (password == null || password.length() == 0) {
//			errors.put("xxx2", context.getMessage("password",null, locale));
		}
		if (errors != null && !errors.isEmpty()) {
			return "login.error";
		}
// 呼叫model
		UserInfoBean bean = userInfoService.login(name, password);
		System.out.println(bean);
		
		return bean;
	}
}