package controller.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.tour.TourOrderInfoBean;
import model.tour.service.TourOrderInfoService;

@Controller
public class UserController02_01 {

	@Autowired
	private TourOrderInfoService tourOrderInfoService;

//	@RequestParam(value = "month", required = false)
	@ResponseBody
	@RequestMapping("/bindex02_01/User.controller")
	public List<TourOrderInfoBean> method(Integer month) {
		
		System.out.println("month=" + month);
		List<TourOrderInfoBean> result = null;
		result = tourOrderInfoService.findBuyMonth(month);

		return result;
	}
}
