package controller.test.hotel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.hotel._01HotelBean;
import model.hotel.dao.HotelDAOHibernate;

@Controller
	public class HotelTest{
	 @Autowired
	 private HotelDAOHibernate dao ;
	 
	 @ResponseBody  //@RestController可替代
	 @RequestMapping("/Hoteltest")
	 public _01HotelBean method() {
	  _01HotelBean bean = dao.findByPrimaryKey(1);  
	  return bean;
	  
	 } 
}
	