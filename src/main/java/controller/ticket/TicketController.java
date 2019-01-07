package controller.ticket;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import model.ticket.TicketInfoBean;
import model.ticket.TicketInfoService;

@Controller
public class TicketController {
	
	@Autowired
	private TicketInfoService ticketInfoService;
	
	@RequestMapping("/voyage/ticket.controller")
	public void method(String country, Model model) {
		Locale locale = LocaleContextHolder.getLocale();
		System.out.println("country="+country);
		
//接收資料
		Map<String, String> errors = new HashMap<>();
		model.addAttribute("errors", errors);	
//呼叫model
		TicketInfoBean bean = new TicketInfoBean();
		bean.setCountry(country);
		
		List<TicketInfoBean> result = ticketInfoService.searchCountry(country);
		
		System.out.println(result);
		
		
	
	}
}
