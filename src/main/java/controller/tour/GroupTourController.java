package controller.tour;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.tour.GroupTourBean;
import model.tour.service.GroupTourService;

@Controller
public class GroupTourController {

	@Autowired
	private GroupTourService groupTourService;
	@ResponseBody
	@RequestMapping("/groupTour")
	public Map<String,Object> method(GroupTourBean bean, Model model) {
		System.out.println("bean="+bean);		
				
	
				
				Long count = groupTourService.countAll();
				model.addAttribute("count",count);
				List<GroupTourBean> result = groupTourService.selectAll(); 				
				model.addAttribute("select", result.get(0));
				
				//放count跟bean
				Map<String,Object> re = new HashMap<>();
				re.put("result", result);
				re.put("count", count);
				return re;
//				return "/voyage/tourtest.jsp";
	//呼叫view
//				if("Select".equals(prodaction)) {
//					List<ProductBean> result = productService.select(bean);
//					model.addAttribute("select", result);
//					return "display.success";
//					
//				} 
//					
//				 else {
//					errors.put("action", "unknown action: "+prodaction);
//					return "product.error";
//				}
		
	}
	
	@RequestMapping("/groupTour2")
	public String method2(GroupTourBean bean, Model model) {
		System.out.println("bean="+bean);		
				
	
				
				Long count = groupTourService.countAll();
				model.addAttribute("count",count);
				List<GroupTourBean> result = groupTourService.selectAll(); 				
				model.addAttribute("select", result.get(0));
				
				return "/tour/tourtest.jsp";

	}
	
}
