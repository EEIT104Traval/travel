package controller.test.hotel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.hotel._01HotelBean;
import model.hotel._01HotelDAO;

@Controller
	public class HotelTest{
	 @Autowired
	 private _01HotelDAO dao ;
	 
	 @ResponseBody  //@RestController可替代
	 @RequestMapping("/Hoteltest")
	 public _01HotelBean method() {
	  System.out.println("test controller");  
	  _01HotelBean bean = dao.findByPrimaryKey(1);  
	  return bean;
	  
	 } 
}
	