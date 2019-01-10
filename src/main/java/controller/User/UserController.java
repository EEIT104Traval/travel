package controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoService;

@Controller
public class UserController {
	
	@Autowired
	private UserInfoService userInfoService;
	
	@ResponseBody
	@RequestMapping("/bindex/User.controller")
	public UserInfoBean method(@RequestParam(value="user")String user ,@RequestParam(value="number")String number) {
		UserInfoBean result = null;
		
		System.out.println("user="+user);
		System.out.println("number="+number);
		
		if ( number.equals("one")) {
			result = userInfoService.findByAccountName(user);
			System.out.println(result);
		} else if ( number.equals("two")) {
			result = userInfoService.findByPhone(user);
			System.out.println(result);
		}
		return result;
	}	
	
	
}
