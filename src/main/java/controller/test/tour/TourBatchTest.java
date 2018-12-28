package controller.test.tour;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.tour.GroupTourBean;
import model.tour.TourBatchBean;
import model.tour.dao.TourBatchDAO;

@RestController
public class TourBatchTest {
	
	@Autowired
	 private TourBatchDAO dao ;
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	@RequestMapping("/TourBatchtestfindPK")
	 public TourBatchBean findPK() {
		TourBatchBean pk = dao.findByPrimaryKey(1); 
	    return pk;	  
	  
	 } 
	@RequestMapping("/TourBatchtestfindALL")
	 public List<TourBatchBean> findALL() {
		List<TourBatchBean> fa = dao.findAll();
		return fa;
				
	}
	@RequestMapping("/TourBatchtestInsert")
	 public TourBatchBean insert() {
		TourBatchBean insert = new TourBatchBean();
		insert.setSerialNo(1);
		insert.setTourNo("8787");
		insert.setDepartureDate(java.sql.Date.valueOf("2018-12-28") );
		insert.setPeopleCount(2);
		insert.setPrice_adult(8877887);
		insert.setPrice_child(8877887);
		insert.setPrice_baby(87);
		insert.setDiscount(787);
		insert.setAirline_go("八七航空-風之島到維多利亞港");
		insert.setDistination_go("維多利亞港");
		insert.setAirline_back("八七航空-維多利亞港到風之島");
		insert.setDistination_back("風之島");
		insert.setContent("超綠-1自組25UP");
		
		TourBatchBean cr = dao.create(insert);		
		return cr;				
	}
	@RequestMapping("/TourBatchtestUpdate")
	 public TourBatchBean update() {
		TourBatchBean update = dao.update("8787",java.sql.Date.valueOf("2018-12-28"),
				 2,8877887,8877887,87,787,"87航空-風之島到維多利亞港","維多利亞港","87航空-維多利亞港到風之島",
				 "風之島","超綠-1自組25UP", 3);		  
		 return update;	  		  
	 } 
	@RequestMapping("/TourBatchtestremove")
	 public boolean remove() {
		 boolean remove = dao.remove(4);		  
		 return false;	  		  
	 } 
	

}
