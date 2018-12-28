package controller.test.rate;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.rate.RateBean;
import model.rate.RateDAO;

@Controller
public class RateTest {
	@Autowired
	private RateDAO dao;
	
	@ResponseBody
	@RequestMapping("/ratePK")
	public RateBean method() {
		RateBean bean =dao.findByPrimaryKey("日圓(JSP)");
		return bean;
	}
	@ResponseBody
	  @RequestMapping("/ratefindALL")
	public List<RateBean> findAll(){
		List<RateBean> all =dao.findAll();
		return all;
	}
	 @ResponseBody
	 @RequestMapping("/userInforemove")
	 public boolean remove() {
		 boolean bean3 = dao.remove("Kitty");   
		  return true;
	 }

}
