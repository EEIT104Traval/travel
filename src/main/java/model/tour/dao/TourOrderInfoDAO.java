package model.tour.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.tour.TourOrderInfoBean;

@Repository
public class TourOrderInfoDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	public TourOrderInfoBean findByPrimaryKey(Integer orderNo) {
		return this.getSession().get(TourOrderInfoBean.class, orderNo);
	}

	public List<TourOrderInfoBean> findAll() {
		return this.getSession().createQuery("from TourOrderInfoBean", TourOrderInfoBean.class).setMaxResults(100)
				.list();
	}

	public TourOrderInfoBean create(TourOrderInfoBean bean) {
		this.getSession().save(bean);
		return bean;
	}

	public TourOrderInfoBean update(TourOrderInfoBean bean) {
		TourOrderInfoBean result = this.getSession().get(TourOrderInfoBean.class, bean.getOrderNo());
		System.out.println(result);
		if (result != null) {
//			result.setOrderNo(bean.getOrderNo());
			result.setAccountName(bean.getAccountName());
			result.setSerialNo(bean.getSerialNo());
			result.setQuantity(bean.getQuantity());
			result.setTotal(bean.getTotal());
			result.setOrderStatus(bean.getOrderStatus());
			result.setOrderTime(bean.getOrderTime());
			return result;
		}
		return null;
	}

	public boolean remove(Integer orderNo) {
		TourOrderInfoBean result = this.getSession().get(TourOrderInfoBean.class, orderNo);
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}

}
