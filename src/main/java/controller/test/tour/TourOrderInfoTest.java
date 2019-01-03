package controller.test.tour;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.tour.TourOrderInfoBean;
import model.tour.dao.TourOrderInfoDAO;

@RestController
public class TourOrderInfoTest {
	@Autowired
	private TourOrderInfoDAO dao;
	
	@RequestMapping("/TOIfindAll")
	public List<TourOrderInfoBean> findAll() {
		List<TourOrderInfoBean> bean = dao.findAll();
		return bean;
	}
	
	@RequestMapping("/TOIfindPK")
	public TourOrderInfoBean findByPrimaryKey() {
		TourOrderInfoBean bean = dao.findByPrimaryKey(1);
		return bean;
	}
	
	@RequestMapping("/TOIcreate")
	public TourOrderInfoBean create() {
		TourOrderInfoBean bean = new TourOrderInfoBean();
		bean.setAccountName("snoopy");
		bean.setSerialNo(1);
		dao.create(bean);
		return bean;
	}
	
	@RequestMapping("/TOIupdate")
	public TourOrderInfoBean update() {
		TourOrderInfoBean bean = new TourOrderInfoBean();
		bean.setOrderNo(1);
		bean.setAccountName("snoopy");
		bean.setSerialNo(2);
		dao.create(bean);
		return bean;
	}
	
	@RequestMapping("/TOIremove")
	public boolean remove() {
		Boolean result = dao.remove(3);
		return result;
	}
	
}
