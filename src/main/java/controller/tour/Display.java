package controller.tour;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
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
	public GroupTourBean method() {
		
		String tourNo = "2"; //這邊寫要接收的tourNo參數
		GroupTourBean GT = groupTourService.select(tourNo);
		System.out.println(GT);
		return GT;
	}	
	
}
