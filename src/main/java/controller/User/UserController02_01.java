package controller.User;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.tour.service.TourOrderInfoService;

@Controller
public class UserController02_01 {

	@Autowired
	private TourOrderInfoService tourOrderInfoService;

	
	@ResponseBody
	@RequestMapping("/bindex02_01/User.controller")
	public Map method(@RequestParam(value = "month", required = false)Integer month) {
		
		System.out.println("month=" + month);
		
		Map<String, List<?>> result = null;
		result = tourOrderInfoService.findBuyMonth(month);

		return result;
	}
}
