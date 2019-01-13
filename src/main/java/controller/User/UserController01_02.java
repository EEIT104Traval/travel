package controller.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.ticket.TicketOrderInfoService;
import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoService;

@Controller
public class UserController01_02 {

	@Autowired
	private UserInfoService userInfoService;
	@Autowired
	private TicketOrderInfoService ticketOrderInfoService;
	
	
	@ResponseBody
	@RequestMapping("/bindex01_02/User.controller")
	public List<UserInfoBean> method(@RequestParam(value = "user", required = false) String user) {
		List<UserInfoBean> result = null;
		System.out.println("user=" + user);
		
		result = userInfoService.findByAccountName(user);
		System.out.println(result);
		
		for(int i = 0 ; i<= result.size() ; i++) {			
			int no = result.get(0).getTicketOrderInfoBean().get(i).getTicketNo();
			System.out.println("ticketNo:"+no);
			
		}
		

			
		return result;
		

	}
}