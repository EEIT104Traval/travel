package controller.rate;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.rate.RateBean;
import model.rate.RateService;
import model.ticket.TicketInfoBean;
import model.tour.GroupTourBean;



@Controller
public class rateController {
	@Autowired
	private RateService rateService;
	
	@ResponseBody
	@RequestMapping("/rate/rateController")
	public List<RateBean> method(/*Model model, @RequestParam(value="currency")String currency,
			                          @RequestParam(value="updateTime")Date updateTime,
			                          @RequestParam(value="cashBuy")Double cashBuy,
			                          @RequestParam(value="cashSell")Double cashSell,
			                          @RequestParam(value="spotBuy")Double spotBuy,
			                          @RequestParam(value="spotSell")Double spotSell*/) {
//		System.out.println("currency="+currency);
//		System.out.println("updateTime="+updateTime);
//		System.out.println("cashBuy="+cashBuy);
//		System.out.println("cashSell="+cashSell);
//		System.out.println("spotBuy="+spotBuy);
//		System.out.println("spotSell="+spotSell);
		System.out.println("有連到Controller");
		List<RateBean> result = rateService.select();
//		for(RateBean RB : result)
//			model.addAttribute("rateResult",result );
//			System.out.println(RB);
		System.out.println(result);
		
		return result;
	}

}
