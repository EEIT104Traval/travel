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
	public UserInfoBean method(@RequestParam(value="found",required=false)String found ,String number) {
		UserInfoBean result = null;
		
		System.out.println("found="+found);
		System.out.println("number="+number);
		
		if ( number == "one") {
			result = userInfoService.findByAccountName(found);
		} else if (number =="two") {
			result = userInfoService.findByPhone(found);
		}
		return result;
	}	
}
