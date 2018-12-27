package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	

	@RequestMapping("/test")
	public String method () {
		return "/member.jsp";
	}

}
