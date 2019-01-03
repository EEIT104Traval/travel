package model.tour.dao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.tour.TourMemberInfoBean;

@Repository
public class TourMemberInfoDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	@Autowired
	TourMemberInfoDAO Dao;

//selectAll 方法
//	public List<TourMemberInfoBean> TourMemberFindAll() {
//		CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
//		CriteriaQuery<TourMemberInfoBean> criteria = criteriaBuilder.createQuery(TourMemberInfoBean.class);
//		criteria.from(TourMemberInfoBean.class);
//		List<TourMemberInfoBean> list = getSession().createQuery(criteria).getResultList();
//		return list;
//	}
//  同上方selectAll
	public List<TourMemberInfoBean> findAll() {
		return this.getSession().createQuery("from TourMemberInfoBean", TourMemberInfoBean.class).setMaxResults(50).list();
	}

//  Hibernate 5.2之後的寫法與javax靠攏
	public List<TourMemberInfoBean> findOrderNo(Integer orderNo) {
		CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
		CriteriaQuery<TourMemberInfoBean> criteria = criteriaBuilder.createQuery(TourMemberInfoBean.class);
		Root<TourMemberInfoBean> from = criteria.from(TourMemberInfoBean.class);
		criteria.select(from).where(from.get("orderNo").in(orderNo));
		List<TourMemberInfoBean> list = getSession().createQuery(criteria).getResultList();
		return list;
	}

//  Hibernate 5.2之前的寫法
	public List<TourMemberInfoBean> findDoublePK(Integer orderNo, Integer purchaseOrder) {
		@SuppressWarnings("deprecation")
		Criteria criteria = this.getSession().createCriteria(TourMemberInfoBean.class);
		criteria.add(Restrictions.eq("orderNo", new Integer(orderNo)));
		criteria.add(Restrictions.eq("purchaseOrder", new Integer(purchaseOrder)));
		@SuppressWarnings("unchecked")
		List<TourMemberInfoBean> users = criteria.list();
		return users;
	}

	public TourMemberInfoBean create(TourMemberInfoBean bean) {
		this.getSession().save(bean);
		return bean;
	}

	public boolean remove(Integer orderNo, Integer purchaseOrder) {
		List<TourMemberInfoBean> users = Dao.findDoublePK(orderNo, purchaseOrder);
		System.out.println(users);
		if (!users.isEmpty()) {
		TourMemberInfoBean result = users.get(0);
			this.getSession().delete(result);
			return true;
		}
		return false;
	}

	public TourMemberInfoBean update(TourMemberInfoBean bean) {
		List<TourMemberInfoBean> users = Dao.findDoublePK(bean.getOrderNo(), bean.getPurchaseOrder());
		if (!users.isEmpty()) {
			TourMemberInfoBean result = users.get(0);
			result.setOrderNo(bean.getOrderNo());
			result.setPurchaseOrder(bean.getPurchaseOrder());
			result.setfName(bean.getfName());
			result.setlName(bean.getlName());
			result.setPrice(bean.getPrice());
			result.setPassenger(bean.getPassenger());
			return result;
		}
		return null;
	}

}
