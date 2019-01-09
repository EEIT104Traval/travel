package controller.ticket;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.ticket.TicketInfoBean;
import model.ticket.TicketInfoService;
import model.ticket.TicketOrderInfoService;

@Controller
public class TicketController {
	
	@Autowired
	private TicketInfoService ticketInfoService;
	@Autowired
	private TicketOrderInfoService ticketOrderInfoService;
	
	@ResponseBody
	@RequestMapping("/voyage/ticket.controller")
	public List<TicketInfoBean> method(@RequestParam(value="country",required=false)String country) {
	//	Locale locale = LocaleContextHolder.getLocale(); //多國語系
		System.out.println("country="+country);
//接收資料
//呼叫model
		List<TicketInfoBean> result = ticketInfoService.searchCountry(country);
		for(TicketInfoBean TI : result)
		System.out.println(TI);
//呼叫view		
			return result;
		}
	
	@ResponseBody
	@RequestMapping("/12131321")
	public void method1(String ticketName, Model model) {
//接收資料
		System.out.println("country="+ticketName);
//呼叫model		
//呼叫view		

		}
	
	}

