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
	private TourMemberInfoDAOHibernate dao;

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
	@RequestMapping("/TourMemberFindAll")
	public List<TourMemberInfoBean> findAll() {
		List<TourMemberInfoBean> bean = dao.TourMemberFindAll();
		return bean;
	}

	@RequestMapping("/TourMemberFindSerialNo")
	public List<TourMemberInfoBean> TourMemberFindSerialNo() {
		List<TourMemberInfoBean> bean = dao.TourMemberFindSerialNo(1);
		return bean;
	}
	
	@RequestMapping("/TourMemberFindPrimartyKey")
	public List<TourMemberInfoBean> TourMemberFindPrimartyKey() {
		List<TourMemberInfoBean> bean = dao.findSerialNo(1,1);
		return bean;
	}
	
	@RequestMapping("/update")
	public List<TourMemberInfoBean> update() {
		List<TourMemberInfoBean> bean = dao.findSerialNo(1,1);
		TourMemberInfoBean a = bean.get(0);
		a.setPrice(3005);
		System.out.println(bean);
		return bean;
	}
	
//	@RequestMapping("/create")
//	public void create() {
//		TourMemberInfoBean bean = null;
//		bean.setSerialNo(1);
//		bean.setPurchaseOrder(2);
//		bean.setfName("G");
//		bean.setlName("O");
//		bean.setPrice(3951);
//		bean.setPassenger("嬰兒");
//		dao.create(bean);
//		System.out.println("create");
//	}
	
	
}