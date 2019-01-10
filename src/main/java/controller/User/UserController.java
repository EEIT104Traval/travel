package controller.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.ticket.TicketInfoBean;
import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoService;
import model.userInfo.dao.UserInfoDAOHibernate;

@Controller
public class UserController {
	
	@Autowired
	private UserInfoService userInfoService;
	
	@ResponseBody
	@RequestMapping("/bindex/User.controller")
	public List<UserInfoBean> method(@RequestParam(value="user")String user ,@RequestParam(value="number")String number) {
		List<UserInfoBean> result = null;
		
		System.out.println("user="+user);
		System.out.println("number="+number);
		
		if ( number.equals("one")) {
			result = userInfoService.findByAccountName(user);
			System.out.println(result);
			return result;
		} else if ( number.equals("two")) {
			result =  userInfoService.findByPhone(user);
			System.out.println(result);
			return result;
		}else if (number.equals("zero")) {
			result = userInfoService.findAll();
			for(UserInfoBean TI : result)
				System.out.println(TI);
		}
		return result;
	}	
}
