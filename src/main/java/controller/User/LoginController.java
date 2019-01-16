package controller.User;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
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
	
	@InitBinder
	public void registerPropertyEditor(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(java.util.Date.class, "birth",
				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
	}
	@RequestMapping(path= {"/voyage/insert.controller"})
	public String insertMb (Model model,UserInfoBean bean,BindingResult bindingresult) {
		Map<String, String> errors = new HashMap<>();
		System.out.println("bean="+bean);
		System.out.println("bindingresult="+bindingresult);
		model.addAttribute("errors", errors);
		UserInfoBean result = userInfoService.create(bean);

//		model.addAttribute("insert", result);
		return "login.test";
	}	
	
	@ResponseBody
	@RequestMapping(path = { "/voyage/login.controller" })
	public UserInfoBean method(String name, String password,Model model) {
		Map<String, String> errors = new HashMap<>();
		model.addAttribute("errors", errors);
//		if (name == null || name.length() == 0) {
//			errors.put("xxx1", context.getMessage("name",null, locale));
//		}
//		if (password == null || password.length() == 0) {
//			errors.put("xxx2", context.getMessage("password",null, locale));
//		}
//		if (errors != null && !errors.isEmpty()) {
//			return "login.error";
//		}
// 呼叫model
		UserInfoBean bean = userInfoService.login(name, password);
		System.out.println(bean);
		
		return bean;
	}


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
	
	 @ResponseBody
	// @RequestMapping("/userInfoupdate")
	 @RequestMapping("/secure/gorfbLogin")
	 public UserInfoBean update(String loginId) {
		 
		 UserInfoBean update = userInfoService.gorfbLoginUpdateTime(loginId);		  
		 return update;	  		  
	 }
}