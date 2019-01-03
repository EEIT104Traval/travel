package controller.test.tour;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.tour.TourMemberInfoBean;
import model.tour.dao.TourMemberInfoDAO;

@RestController
public class TourMemberInfoTest {

	@Autowired
	private TourMemberInfoDAO dao;

//	@Autowired
//	private SessionFactory sessionFactory;
//
//	public Session getSession() {
//		return this.sessionFactory.getCurrentSession();
//	}

//	@RequestMapping("/TestPK")
//	public void DoublePK() {
//		Criteria criteria = this.getSession().createCriteria(TourMemberInfoBean.class);
//		criteria.add(Restrictions.eq("serialNo", new Integer(1)));
//		criteria.add(Restrictions.eq("purchaseOrder", new Integer(1)));
//		List<TourMemberInfoBean> users = criteria.list();
//		Iterator<TourMemberInfoBean> iter = users.iterator();
//		while (iter.hasNext()) {
//			TourMemberInfoBean item = (TourMemberInfoBean) iter.next();
//			System.out.println("name:" + item.getfName());
//			System.out.println("tel;" + item.getlName());
//			System.out.println("age:" + item.getPassenger());
//		}
//	}

//	@ResponseBody  //@RestController可替代
	@RequestMapping("/TMIfindAll")
	public List<TourMemberInfoBean> findAll() {
		List<TourMemberInfoBean> bean = dao.findAll();
		return bean;
	}

	@RequestMapping("/TMIfindSerialNo")
	public List<TourMemberInfoBean> TourMemberFindSerialNo() {
		List<TourMemberInfoBean> bean = dao.findSerialNo(1);
		return bean;
	}
	
	@RequestMapping("/TMIfindDoublePK")
	public List<TourMemberInfoBean> TourMemberFindPrimartyKey() {
		List<TourMemberInfoBean> bean = dao.findDoublePK(1,1);
		return bean;
	}
	
	@RequestMapping("/TMIupdate")
	public TourMemberInfoBean update() {
		TourMemberInfoBean a = new TourMemberInfoBean();
		a.setSerialNo(1);
		a.setPurchaseOrder(1);
		a.setPrice(951357);
		TourMemberInfoBean result = dao.update(a);
		return result;
	}
	
	@RequestMapping("/TMIcreate")
	public TourMemberInfoBean create() {
		TourMemberInfoBean bean = new TourMemberInfoBean() ;
		bean.setSerialNo(1);
		bean.setPurchaseOrder(3);
//		bean.setfName("G");
//		bean.setlName("O");
//		bean.setPrice(3951);
//		bean.setPassenger("嬰兒");
		bean = dao.create(bean);
		return bean;
	}
	
	@RequestMapping("/TMIremove")
	public boolean remove() {
		boolean result = dao.remove(1,3);
		return result;
	}
	
	
}