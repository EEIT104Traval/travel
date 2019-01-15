package controller.User;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
			result = new ArrayList<>();
			result.add(userInfoService.findByAccountName(user));
			System.out.println(result);
		} else if (number.equals("two")) {
			result = new ArrayList<>();
			result.add(userInfoService.findByPhone(user));
			System.out.println(result);
		} else if (number.equals("three")) {
			result = userInfoService.findAll();
			for (UserInfoBean TI : result)
				System.out.println(TI);
		}
		return result;
	}
}
