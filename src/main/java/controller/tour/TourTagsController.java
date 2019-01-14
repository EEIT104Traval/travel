/**
 * 
 */
package controller.tour;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.tour.GroupTourBean;
import model.tour.TourTagsBean;
import model.tour.service.TourTagsService;

/**
 * @author User
 *
 */
@Controller
public class TourTagsController {
	@Autowired
	TourTagsService tourTagsService = null;
	@ResponseBody
	@RequestMapping("/tourTags")	
	public Integer method(String tag, Model model) {
		Integer result = tourTagsService.findByTags(tag); 	
		System.out.println("AAAAAAAAAAAAAAAAAAAAAAAA"+result);
		return result;
	}
}
