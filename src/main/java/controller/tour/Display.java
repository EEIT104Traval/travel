package controller.tour;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.tour.GroupTourBean;
import model.tour.service.GroupTourService;
import model.tour.service.TourBuyService;

@Controller
public class Display {
	
	@Autowired
	private GroupTourService groupTourService;
	@Autowired
	private TourBuyService tourBuyService;
	
	@ResponseBody
	@RequestMapping("/tour/display")
	public GroupTourBean TourDisplay(@RequestParam(value="tourNo",required=false)String tourNo) {
		System.out.println(tourNo);
		GroupTourBean GT = groupTourService.select(tourNo);
		System.out.println(GT);
		return GT;
	}
	
	@RequestMapping("/tour/Display2/buy")
	public String Buy(Integer serialNo,String tourNo,String accountName,String tourName,Integer tourDays,Model model) {
		System.out.println(tourDays);
		Map<String,Object> result = tourBuyService.method(serialNo, accountName);
		System.out.println(result);
		model.addAttribute("tourName",tourName);
		model.addAttribute("tourDays",tourDays);
		model.addAttribute("result",result);
		return "tour.buy";
	}	
	
}
