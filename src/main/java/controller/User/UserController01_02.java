package controller.User;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.userInfo.UserInfoService;

@Controller
public class UserController01_02 {

	@Autowired
	private UserInfoService userInfoService;

	@ResponseBody
	@RequestMapping("/bindex01_02/User.controller")
	public Map method(@RequestParam(value = "user", required = false) String user,Model model) {
		
		System.out.println("user=" + user);
		
		Map<String, List<?>> result = null;
		result = userInfoService.findByPrimaryKey(user);
		System.out.println("--------------------------");
		
		System.out.println(result);
		
		return result;
	}
}