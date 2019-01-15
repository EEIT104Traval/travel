package controller.User;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoService;

@Controller
@SessionAttributes(value= {"user","login","accountName"})
public class LoginController {

	@Autowired
	UserInfoService userInfoService;
	
	@ResponseBody
	@RequestMapping(path = { "/secure/login.controller" })
	public Map<String, Object> LogIn(String name, String password,Model model) {
		System.out.println("name="+name);
		System.out.println("password="+password);
	
		Map<String, Object> message = new HashMap<>();
//		model.addAttribute("errors", message);
		
		UserInfoBean bean = null ;
		bean = userInfoService.login(name, password);
		
		if (name == null || name.length() == 0 ||password == null || password.length() == 0) {
			message.put("xxx1","帳號或密碼錯誤");
			return message;
		}
				
		System.out.println(bean);
		
		if (bean == null) {
			message.put("xxx1", "Login failed");
			System.out.println("登入失敗");
			return message;
		} else {
			message.put("xxx1", bean);
			model.addAttribute("login", bean);			
			model.addAttribute("accountName", bean.getAccountName());			
			model.addAttribute("user", bean.getLastname()+" "+bean.getFirstname());
			System.out.println("登入成功");
			return message;
		}
	}
	
	@ResponseBody
	@RequestMapping(path = { "/secure/log_out.controller" })
	public String Log_Out (SessionStatus sessionStatus) {
		sessionStatus.setComplete();
		System.out.println("logout");
		return "logout";
	}
}