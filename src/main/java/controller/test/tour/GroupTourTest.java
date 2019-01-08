package controller.test.tour;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.tour.GroupTourBean;
import model.tour.dao.GroupTourDAO;

@RestController//@Controller

public class GroupTourTest {
	
	
	 @Autowired
	 private GroupTourDAO dao ;
	
		@Autowired
		private SessionFactory sessionFactory;
		
		public Session getSession() {
			return this.sessionFactory.getCurrentSession();
		}
	 
	// @ResponseBody  //@RestController可替代
	 @RequestMapping("/TourtestfindPK")
	 public GroupTourBean findPK() {
		 GroupTourBean pk = dao.findByPrimaryKey("2"); 
		 return pk;	  
	  
	 } 
	 @RequestMapping("/TourtestfindALL")
	 public List<GroupTourBean> findALL() {
		 List<GroupTourBean> all = dao.findAll();		  
		 return all;	  		  
	 } 
	 @RequestMapping("/Tourtestcreate")
	 public GroupTourBean create() {
		 GroupTourBean bean = new GroupTourBean();
//		 GroupTourBean bean = this.getSession().get(GroupTourBean.class,"8787");
		 	bean.setTourNo("8787");		 	
		 	bean.setCountry("楓之谷");
		 	bean.setTourName("楓之谷1日遊");
		 	bean.setDestination("為多莉亞港");
		 	bean.setTourDays(1);
		 	bean.setGuaranteedCount(10);
		 	bean.setFullPeopleCount(15);
		 	bean.setClickCount(99);
		 	bean.setContent("打炎盔囉!!");
		 GroupTourBean ck = dao.create(bean); 
		 return ck;	  
	  
	 } 
	 @RequestMapping("/Tourtestupdate")
	 public GroupTourBean update() {
		 GroupTourBean update = dao.update("中國","沙漠之旅-蒙古八七日遊","蒙古自治區"
				                           ,87,20,40,999,"安安你好PLAYER87","1001");		  
		 return update;	  		  
	 } 
	 @RequestMapping("/Tourtestremove")
	 public boolean remove() {
		 boolean remove = dao.remove("8787");		  
		 return remove;	  		  
	 } 
	 
	 
	 
}
