package controller.ticket;

import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
//---------------------------------(↑搜尋資料)(↓購買資料)---------------------------------------------
//	@ResponseBody
	@RequestMapping("/voyage/ticketbuy.controller")
	public String method1(String ticketName,String accountName, Integer ticketNo, Integer adultTicketSellQ, Integer adultTicketPrice ,Model model) throws ParseException {
//接收資料 (查證)
		System.out.println("ticketNo="+ticketNo);
		System.out.println("accountName="+accountName);
		System.out.println("adultTicketSellQ="+adultTicketSellQ);
		System.out.println("adultTicketPrice="+adultTicketPrice);		
//呼叫model
		ticketInfoService.qupdate(accountName, ticketNo, adultTicketSellQ, adultTicketPrice);
		
		Map<String, Object> order = new HashMap<>();
		
		order.put("accountName",accountName);
		order.put("ticketName",ticketName);
		order.put("ticketNo",ticketNo);
		order.put("adultTicketSellQ", adultTicketSellQ);
		order.put("adultTicketPrice", adultTicketPrice);
		
		model.addAttribute("order", order);
		
//呼叫view		
		return "buyticket";
		}
	}

