package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.tour.GroupTourBean;
import model.tour.dao.GroupTourDAO;

@Controller
public class Test {

	@Autowired
	private GroupTourDAO dao ;
	
	@ResponseBody  //@RestController可替代
	@RequestMapping("/test")
	public GroupTourBean method() {
		System.out.println("test controller");		
		GroupTourBean bean = dao.findByPrimaryKey("1001");		
		return bean;
		
	}	
}
