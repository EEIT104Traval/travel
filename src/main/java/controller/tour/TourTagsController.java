package controller.tour;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.tour.GroupTourBean;
import model.tour.TourTagsBean;
import model.tour.service.TourTagsService;

@Controller
public class TourTagsController {
	@Autowired
	TourTagsService tourTagsService = null;
	@ResponseBody
	@RequestMapping("/tourTags")	
	public 	List<GroupTourBean> method(String tag, Model model) {
		List<GroupTourBean> result = tourTagsService.findByTags(tag); 	
		System.out.println("AAAAAAAAAAAAAAAAAAAAAAAA=="+result );
//		result.forEach(item->{
//			List<TourBatchBean> tourBatchBeans = item.getTourBatchBean();
//			tourBatchBeans.forEach(t->{
//				t.setGroupTourBean(null);
//			});
//			item.setTourBatchBean(tourBatchBeans) ;
//			
//		});
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/allTourTags")	
	public 	Set<String> Tags() {
		Set<String> result = tourTagsService.tags(); 	
		System.out.println("TAGS=="+result );

		return result;
	}
	
}
