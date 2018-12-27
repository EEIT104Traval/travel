package controller.test.tour;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.tour.TourMemberInfoBean;
import model.tour.dao.TourMemberInfoDAOHibernate;

@RestController
public class WenTourTest {
	
	 @Autowired
	 private TourMemberInfoDAOHibernate dao ;
	 
//	 @ResponseBody  //@RestController可替代
	 @RequestMapping("/TourMemberFindPK")
	 public TourMemberInfoBean findByPrimaryKey() {
	  System.out.println("test controller");  
	  TourMemberInfoBean bean = dao.findByPrimaryKey(1);
	  return bean;
	 } 
	 
	 @RequestMapping("/TourMemberFindAll")
	 public List<TourMemberInfoBean> findAll() {
	  System.out.println("test controller");  
	  List<TourMemberInfoBean> bean = dao.findAll();
	  return bean;
	 } 
	 
	 
}