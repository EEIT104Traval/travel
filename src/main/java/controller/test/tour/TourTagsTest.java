package controller.test.tour;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.tour.TourBatchBean;
import model.tour.TourTagsBean;
import model.tour.dao.TourTagsDAO;

@RestController
public class TourTagsTest {
	
	@Autowired
	 private TourTagsDAO dao ;
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	@RequestMapping("/TourTagsTestfindPK")
	 public TourTagsBean findPK() {
		TourTagsBean pk = dao.findByPrimaryKey(1); 
	    return pk;	  
	  
	 } 
	@RequestMapping("/TourTagsTestfindALL")
	 public List<TourTagsBean> findALL() {
		List<TourTagsBean> fa = dao.findAll();
		return fa;
				
	}
	@RequestMapping("/TourTagsTestInsert")
	public TourTagsBean create() {
		TourTagsBean bean = new TourTagsBean();
		bean.setSerialNo(1);
		bean.setTag("冷死卡好");
		bean.setTourNo("1002");
		TourTagsBean insert = dao.create(bean);
		return insert;
	}
	@RequestMapping("/TourTagsTestUpdate")
	public TourTagsBean update() {
		TourTagsBean update = dao.update("1001","八十七峰駱駝",2);		  
		 return update;	  		  
	}
	@RequestMapping("/TourTagsTestDelete")
	 public boolean delete() {
		 boolean delete = dao.remove(1);		  
		 return false;	  		  
	 }  
}
