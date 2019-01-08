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
		RateBean bean =dao.findByPrimaryKey(1);
		return bean;
	}
	@ResponseBody
	@RequestMapping("/ratefindALL")
	public List<RateBean> findAll(){
		List<RateBean> all =dao.findAll();
		return all;
	}
	
	@ResponseBody
	@RequestMapping("/ratefindALL01")
	public List<RateBean> findAll01(){
		List<RateBean> all =dao.findAll01();
		return all;
	}
	
	
	 @ResponseBody
	 @RequestMapping("/rateremove")
	 public boolean remove() {
		 boolean bean3 = dao.remove(1);   
		  return true;
	 }

}
