package controller.User;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.ticket.TicketInfoBean;
import model.ticket.TicketInfoDAO;
import model.ticket.TicketInfoService;

@Controller
public class UserController03_01 {

	@Autowired
	private TicketInfoService ticketInfoService;
	@Autowired
	private TicketInfoDAO ticketInfoDAO;
	
	@ResponseBody
	@RequestMapping("/bindex03_01/User.controller")
	public String method(@RequestParam(value = "path", required = false)String path , String option) throws IOException {
		
		String x;
		System.out.println("path=" + path);
		if(option.equals("up")) {			
			 x = ticketInfoService.UPticketInfo(path);
			System.out.println("選擇上傳"); 
			}else {
			 x = ticketInfoService.DLticketInfo(path);
			 System.out.println("選擇下載");	
			}
		System.out.println(x);
		
		
		return x;
	}
	@ResponseBody
	@RequestMapping("/bindex03_011/User.controller")
	public List<TicketInfoBean> method1(@RequestParam(value = "path", required = false)String path , String option) throws IOException {
		
		List<TicketInfoBean> bean = ticketInfoDAO.findAll();

		return bean;
	}
}
