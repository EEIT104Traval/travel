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
	
	public TourOrderInfoBean findByPrimaryKey(Integer serialNo) {
		return this.getSession().get(TourOrderInfoBean.class, serialNo);
	}
	
	public List<TourOrderInfoBean> findAll() {
		return this.getSession().createQuery("from TourOrderInfoBean", TourOrderInfoBean.class)
				.setMaxResults(100)
				.list();
	}
	public TourOrderInfoBean create(TourOrderInfoBean bean) {
		if(bean!=null) {
			TourOrderInfoBean result = this.getSession().get(TourOrderInfoBean.class, bean.getSerialNo());
			if(result==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	public TourOrderInfoBean update(TourOrderInfoBean bean) {
		TourOrderInfoBean result = this.getSession().get(TourOrderInfoBean.class, bean.getSerialNo());
		System.out.println(result);
		if(result!=null) {
			result.setSerialNo(bean.getSerialNo());
			result.setUsername(bean.getUsername());
			result.setTourNo(bean.getTourNo());
			result.setQuantity(bean.getQuantity());
			result.setTotal(bean.getTotal());
			result.setOrderStatus(bean.getOrderStatus());
			return result;
		}
		return null;
	}
	public boolean remove(Integer serialNo) {
		TourOrderInfoBean result = this.getSession().get(TourOrderInfoBean.class, serialNo);
		if(result!=null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}

}
