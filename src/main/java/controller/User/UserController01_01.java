package controller.User;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoService;

@Controller
public class UserController01_01 {

	@Autowired
	private UserInfoService userInfoService;

	@ResponseBody
	@RequestMapping("/bindex01_01/User.controller")
	public List<UserInfoBean> method(@RequestParam(value = "user", required = false) String user,
			@RequestParam(value = "number", required = false) String number) {
		List<UserInfoBean> result = null;

		System.out.println("user=" + user);
		System.out.println("number=" + number);

		if (number.equals("one")) {
			result = userInfoService.findByAccountName(user);
			System.out.println(result);
			return result;
		} else if (number.equals("two")) {
			result = userInfoService.findByPhone(user);
			System.out.println(result);
			return result;
		} else if (number.equals("three")) {
			result = userInfoService.findAll();
			for (UserInfoBean TI : result)
				System.out.println(TI);
			return result;
		}
		return result;
	}

	@ResponseBody
	@RequestMapping("/bindex01_11/User.controller")
	public Map<String, Object> method1(@RequestParam(value = "user", required = false) String user,
			@RequestParam(value = "number", required = false) String number, Model model) {
		System.out.println("bean=" + user);
		System.out.println("number=" + number);

//		
//		if (number.equals("one")) {
//			result = userInfoService.findByAccountName(user);
//			System.out.println(result);
//			return result;
//		} else if (number.equals("two")) {
//			result = userInfoService.findByPhone(user);
//			System.out.println(result);
//			return result;
//		} else if (number.equals("three")) {
//			result = userInfoService.findAll();
//			for (UserInfoBean TI : result)
//				System.out.println(TI);
//			return result;
//		}
//		return result;
		List<UserInfoBean> count = userInfoService.findByAccountName(user);
		
		
		
		return null;
	}
}
