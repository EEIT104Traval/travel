package controller.tour;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import model.tour.GroupTourBean;
import model.tour.service.GroupTourService;

@RestController
public class Display {
	
	@Autowired
	private GroupTourService groupTourService;
	
	@ResponseBody
	@RequestMapping("/tour/display")
	public GroupTourBean method(@RequestParam(value="tourNo",required=false)String tourNo) {
		String t ="1";
		System.out.println(tourNo);
		GroupTourBean GT = groupTourService.select(t);
		System.out.println(GT);
		return GT;
	}	
	
}
