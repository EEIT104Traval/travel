package controller.rate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.rate.RateService;



@Controller
public class rateController {
	@Autowired
	private RateService rateService;
	@ResponseBody
	@RequestMapping("/voyage/ticket.controller")

}
