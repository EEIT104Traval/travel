package controller.test;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.ticket.TicketInfoBean;
import model.ticket.TicketInfoDAO;


@RestController
public class TicketInfoTest {

 @Autowired
 private TicketInfoDAO dao ;
 @Autowired
 private SessionFactory sessionFactory;

 public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
// @ResponseBody  //@RestController可替代
 @RequestMapping("/ticketfindAll")
 public List<TicketInfoBean> findALL() {
	 List<TicketInfoBean> all = dao.findAll();		  
	 return all;	  		  
 } 
 @RequestMapping("/ticketfindpk")
 public TicketInfoBean method() {
  TicketInfoBean bean = dao.findByPrimaryKey(1);  
  return bean;
 }
	 @RequestMapping("/ticketCreate")
	 public TicketInfoBean create() {
		 TicketInfoBean result = new TicketInfoBean();
//		 GroupTourBean bean = this.getSession().get(GroupTourBean.class,"8787");
		 	result.setTicketNo(2);
			result.setTicketName("環球大阪");
			result.setValidity(new java.util.Date());
			result.setAdultTicketPrice(2000);
			result.setChildTicketPrice(1800);
			result.setAdultTicketSellQ(10);
			result.setChildTicketSellQ(10);
			result.setAdultTicketSelledQ(5);
			result.setChildTicketSelledQ(5);
			result.setCountry("japan");
			result.setCategory("test");
			result.setProductFeatures("test");
			result.setTicketPicture(null);
			result.setTicketDescription("test");
			result.setTraffic_information("test");
			result.setSpecial_restrictions("test");
			result.setGoogleAddressOrName("test");
			
			TicketInfoBean ck = dao.create(result); 
			return ck;	  
	  
	 } 
	 @RequestMapping("/ticketUpdate")
	 public TicketInfoBean update() {
		 TicketInfoBean update = dao.update(1,"迪士尼",new java.util.Date(),3000,2000,10,10,5,5,"japan","test","test",null,"test","test","test","test");		  
		 return update;	  		  
	 } 
	 @RequestMapping("/ticketRemove")
	 public boolean remove() {
		 boolean remove = dao.remove(1);		  
		 return false;	  		  
	 }  
}