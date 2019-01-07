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
	public List<GroupTourBean> method(GroupTourBean bean, Model model) {
		System.out.println("bean="+bean);		
				
		//驗證資料
				Map<String, String> errors = new HashMap<>();
				model.addAttribute("errors", errors);	
//				if("Insert".equals(prodaction) || "Update".equals(prodaction) || "Delete".equals(prodaction)) {
//					if (bean == null || bean.getId()== 0) {
//						errors.put("id", "Please enter id for " + prodaction);
//					} 
//				}	
				if(errors!=null && !errors.isEmpty()) {
					
//					return "product.error";
				}
				System.out.println("errors="+errors);	
				
				Long count = groupTourService.countAll();
				model.addAttribute("count",count);
				List<GroupTourBean> result = groupTourService.selectAll(); 				
				model.addAttribute("select", result.get(0));	
				return result;
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
}
