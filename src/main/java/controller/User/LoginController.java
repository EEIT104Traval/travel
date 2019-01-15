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

import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoService;

@Controller
@SessionAttributes(value="user")
public class LoginController {

	@Autowired
	UserInfoService userInfoService;
	
	@InitBinder
	public void registerPropertyEditor(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(java.util.Date.class, "birth",
				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
	}
	@RequestMapping(path= {"/secure/insert.controller"})
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
	@RequestMapping(path = { "/secure/login.controller" })
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
	
	 @ResponseBody
	// @RequestMapping("/userInfoupdate")
	 @RequestMapping("/secure/gorfbLogin")
	 public UserInfoBean update(String loginId) {
		 System.out.println("loginId="+loginId);
		 UserInfoBean update = userInfoService.gorfbLoginUpdateTime(loginId);		  
		 return update;	  		  
	 }
}