package controller.test.tour;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.tour.TourMemberInfoBean;
import model.tour.TourOrderInfoBean;
import model.tour.dao.TourMemberInfoDAO;
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
	
	@Autowired
	private TourMemberInfoDAO mdao;
	@RequestMapping("/TOIcreate")
	public TourOrderInfoBean create() {
		TourOrderInfoBean bean = new TourOrderInfoBean();
		bean.setAccountName("snoopy");
		bean.setSerialNo(1);
		dao.create(bean);
		
		TourMemberInfoBean mbean = new TourMemberInfoBean() ;
		mbean.setOrderNo(bean.getOrderNo());
		mbean.setPurchaseOrder(1);
//		mbean.setfName("G");
//		mbean.setlName("O");
//		mbean.setPrice(3951);
//		mbean.setPassenger("嬰兒");
		mdao.create(mbean);
		
		return bean;
	}
	
	@RequestMapping("/TOIupdate")
	public TourOrderInfoBean update() {
		TourOrderInfoBean bean = new TourOrderInfoBean();
		bean.setOrderNo(6);
		bean.setAccountName("micky");
		bean.setSerialNo(2);
		dao.update(bean);
		return bean;
	}
	
	@RequestMapping("/TOIremove")
	public boolean remove() {
		Boolean result = dao.remove(3);
		return result;
	}
	
	@RequestMapping("/findBuyMonth")
public List<TourOrderInfoBean> findBuyMonth(Integer month) {
		
		List<TourOrderInfoBean> OrderMonth  = dao.findBuyMonth(1);
		
		return OrderMonth;
		
	}
}
