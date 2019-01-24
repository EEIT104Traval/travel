package controller.test.flight;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import model.flight.service.ThreeTableService;

@Controller
public class TestHQLController {
	@Autowired
	private ThreeTableService threeTableService;
	
	@RequestMapping("/testHQLController")
	public String method() {
		System.out.println("TestHQLController");
		threeTableService.method("snoopy");
		
		return "product.error";
	}
}
