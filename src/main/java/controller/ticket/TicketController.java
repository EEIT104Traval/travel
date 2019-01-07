package controller.ticket;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
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
	public String method(@RequestParam(name="country")String country, Model model) {
	//	Locale locale = LocaleContextHolder.getLocale();
		System.out.println("country="+country);
		
//接收資料
//驗證資料
//呼叫model
		
		TicketInfoBean bean = new TicketInfoBean();
		bean.setCountry(country);
			
		List<TicketInfoBean> result = ticketInfoService.searchCountry(country);
		System.out.println(result);
//呼叫view		
		if(result == null) {
			
			return "voyage/ticket.jsp";
		}else {
			return "voyage/ticket.jsp";
		}
	
	}
}
