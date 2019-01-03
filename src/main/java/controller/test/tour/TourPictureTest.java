package controller.test.tour;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.tour.TourPictureBean;
import model.tour.dao.TourPictureDAO;
@RestController
public class TourPictureTest {
	
	@Autowired
	private TourPictureDAO dao;
	
	@RequestMapping("/TPfindAll")
	public List<TourPictureBean> findAll() {
		List<TourPictureBean> bean = dao.findAll();
		return bean;
	}

	@RequestMapping("/TPfindOrderNo")
	public List<TourPictureBean> findTourNo() {
		List<TourPictureBean> bean = dao.findTourNo("1001");
		return bean;
	}
	
	@RequestMapping("/TPfindDoublePK")
	public List<TourPictureBean> findDouclePK() {
		List<TourPictureBean> bean = dao.findDoublePK("1001",0);
		return bean;
	}
	
	@RequestMapping("/TPcreate")
	public TourPictureBean create() {
		TourPictureBean bean = new TourPictureBean() ;
		bean.setTourNo("1002");
		bean.setTpicNo(1);
		bean.setPictitle("title");
		bean = dao.create(bean);
		return bean;
	}
	
	@RequestMapping("/TPupdate")
	public TourPictureBean update() {
		TourPictureBean TPBean = new TourPictureBean();
		TPBean.setTourNo("1002");
		TPBean.setTpicNo(1);
		TPBean.setPicDetail("WTF?");
		TourPictureBean result = dao.update(TPBean);
		return result;
	}
	
	@RequestMapping("/TPremove")
	public boolean remove() {
		boolean result = dao.remove("1002",2);
		return result;
	}
}
