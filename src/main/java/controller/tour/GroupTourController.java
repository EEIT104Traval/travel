package controller.tour;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.tour.GroupTourBean;
import model.tour.TourBatchBean;
import model.tour.service.GroupTourService;

@Controller
public class GroupTourController {

	@Autowired
	private GroupTourService groupTourService;
	@ResponseBody
	@RequestMapping("/groupTour")
	public Map<String,Object> method(GroupTourBean bean, Model model) {
//		System.out.println("bean="+bean);		
				
	
		
		
				
				Long count = groupTourService.countAll();
//				model.addAttribute("count",count);
				List<GroupTourBean> result = groupTourService.selectAll(); 				
//				model.addAttribute("select", result.get(0));
//				result.forEach(item->{
//					List<TourBatchBean> tourBatchBeans = item.getTourBatchBean();
//					tourBatchBeans.forEach(t->{
//						t.setGroupTourBean(null);
//					});
//					item.setTourBatchBean(tourBatchBeans);
//					
//				});
				for( GroupTourBean item : result) {
					List<TourBatchBean> tourBatchBeans = item.getTourBatchBean();
					for( TourBatchBean tourBatchBean : tourBatchBeans ) {
						tourBatchBean.setGroupTourBean(null);
					}
					item.setTourBatchBean(tourBatchBeans);
				}

				
				
				
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
	
	@ResponseBody
	@RequestMapping("/groupTourClick")
	public List<GroupTourBean> Findbyclick(GroupTourBean bean, Model model) {
//		System.out.println("bean="+bean);	
				List<GroupTourBean> result = groupTourService.findbyclick(); 	
				
				result.forEach(item->{
					List<TourBatchBean> tourBatchBeans = item.getTourBatchBean();
					tourBatchBeans.forEach(t->{
						t.setGroupTourBean(null);
					});
					item.setTourBatchBean(tourBatchBeans);
					
				});

System.out.println(result);
				return result;
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
//	@ResponseBody
	@RequestMapping("/searchTour")                                         //國家
	public String method(GroupTourBean bean, Model model,String tours,Date checkin_date,Date checkout_date) {
//		public List<TourBatchBean> method(GroupTourBean bean, Model model,String tours,Date checkin_date,Date checkout_date) {
				System.out.println("T="+tours+"IN="+checkin_date+"OUT="+checkout_date);
				List<TourBatchBean> no  = groupTourService.findTourByNO(tours, checkin_date, checkout_date);
				model.addAttribute("tour", no);
				System.out.println("no="+no);
		
//	    List<TourBatchBean> no  = groupTourService.findTourByNO(tours, checkin_date, checkout_date);
//	    no.forEach(item->{
//	        GroupTourBean group = item.getGroupTourBean();
//	        group.setTourBatchBean( null );
//	        item.setGroupTourBean(group);
//	    });
//	    System.out.println("FUCK!");
	    model.addAttribute("tour", no);		
				return "tour.search";
//	    return no;
		
	}
	
	

}
