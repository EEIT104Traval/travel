package controller.User;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import model.ticket.TicketInfoDAO;
import model.ticket.TicketInfoService;
import model.tour.service.TourOrderInfoService;
import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoService;

@Controller
@SessionAttributes(value= {"user","login","accountName"})
public class LoginController {

	@Autowired
	UserInfoService userInfoService;
	@Autowired
	private TourOrderInfoService tourOrderInfoService;
	@Autowired
	private TicketInfoService ticketInfoService;
	@Autowired
	private TicketInfoDAO ticketInfoDAO;
	
	@InitBinder
	public void registerPropertyEditor(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(java.util.Date.class, "birth",
				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
	}

//	@ResponseBody 原版
//	@RequestMapping(path= {"/voyage/userorder.controller"})
//	public Map<String, List<?>> getMemberOrder(@RequestParam(value="accountName",required=false)String user) {
//		Map<String, List<?>> result = null;
//		result = userInfoService.findByPrimaryKey(user);
//		System.out.println(result);
//	
//	return result;
//	}
	
	@ResponseBody
	@RequestMapping(path= {"/voyage/userorder.controller"})
	public Map<String, List<?>> getMemberOrder(@RequestParam(value="accountName",required=false)String user,
											   @RequestParam(value="orderNo",required=false)Integer tourorderNo,Integer ticketOrderNO,
											   @RequestParam(value="orderNo1",required=false)Integer hotelorderNo) {
		Map<String, List<?>> result = null;
		Boolean result1 = null;
		System.out.println("user="+user+"tourorderNo="+tourorderNo+"ticketOrderNO="+ticketOrderNO+"hotelorderNo="+hotelorderNo);
		result = userInfoService.findByPrimaryKey(user);
		result1 = userInfoService.orderModify(user, tourorderNo, ticketOrderNO, hotelorderNo);
		System.out.println(result);
	
	return result;
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
	@RequestMapping(path= {"/voyage/registered.controller"})
	public Map<String, Object> insertMb1 (Model model,UserInfoBean bean,BindingResult bindingresult) {
		System.out.println(bean.getAccountName());
		System.out.println("test");
		UserInfoBean result = userInfoService.create(bean);
		System.out.println(result);
		Map<String, Object> message = new HashMap<>();
//		System.out.println("bean="+bean);
//		System.out.println("bindingresult="+bindingresult);
//		model.addAttribute("errors", errors);
//		UserInfoBean result = userInfoService.create(bean);
//		model.addAttribute("insert", result);
//		message.put("xxx1", bean);
//		model.addAttribute("login", bean);			
//		model.addAttribute("accountName", bean.getAccountName());			
//		model.addAttribute("user", bean.getLastname()+" "+bean.getFirstname());
//		System.out.println("登入成功");
		if (result == null) {
			message.put("failed", "註冊失敗");
			System.out.println("註冊失敗");
			return message;
		} else {
			message.put("success", "註冊成功");
			System.out.println("註冊成功");
			return message;
		}
		
	}	

	@ResponseBody
	@RequestMapping(path = { "/voyage/login.controller" })
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
	 public UserInfoBean update(String loginId , Model model) {
		 
		 UserInfoBean update = userInfoService.gorfbLoginUpdateTime(loginId);
		 model.addAttribute("user",update.getLastname()+" "+update.getFirstname());
		 return update;	  		  
	 }
	 

}