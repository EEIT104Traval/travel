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

@Controller
public class TicketController {
	
	@Autowired
	private TicketInfoService ticketInfoService;
	
	@ResponseBody
	@RequestMapping("/voyage/ticket.controller")
	public List<TicketInfoBean> method(@RequestParam(name="country")String country, Model model) {
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
	}

