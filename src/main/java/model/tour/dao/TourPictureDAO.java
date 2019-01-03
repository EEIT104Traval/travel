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

import model.tour.TourPictureBean;

@Repository
public class TourPictureDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	@Autowired
	TourPictureDAO Dao;
	
	public List<TourPictureBean> findAll() {
		return this.getSession().createQuery("from TourPictureBean", TourPictureBean.class).setMaxResults(50).list();
	}

//  Hibernate 5.2之後的寫法與javax靠攏
	public List<TourPictureBean> findTourNo(String tourNo) {
		CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
		CriteriaQuery<TourPictureBean> criteria = criteriaBuilder.createQuery(TourPictureBean.class);
		Root<TourPictureBean> from = criteria.from(TourPictureBean.class);
		criteria.select(from).where(from.get("tourNo").in(tourNo));
		List<TourPictureBean> list = getSession().createQuery(criteria).getResultList();
		return list;
	}

//  Hibernate 5.2之前的寫法
	public List<TourPictureBean> findDoublePK(String tourNo, Integer tpicNo) {
		@SuppressWarnings("deprecation")
		Criteria criteria = this.getSession().createCriteria(TourPictureBean.class);
		criteria.add(Restrictions.eq("tourNo", new String(tourNo)));
		criteria.add(Restrictions.eq("tpicNo", new Integer(tpicNo)));
		@SuppressWarnings("unchecked")
		List<TourPictureBean> users = criteria.list();
		return users;
	}

	public TourPictureBean create(TourPictureBean bean) {
		this.getSession().save(bean);
		return bean;
	}

	public boolean remove(String tourNo, Integer tpicNo) {
		List<TourPictureBean> users = Dao.findDoublePK(tourNo, tpicNo);
		System.out.println(users);
		if (!users.isEmpty()) {
			TourPictureBean result = users.get(0);
			this.getSession().delete(result);
			return true;
		}
		return false;
	}

	public TourPictureBean update(TourPictureBean bean) {
		List<TourPictureBean> users = Dao.findDoublePK(bean.getTourNo(), bean.getTpicNo());
		if (!users.isEmpty()) {
			TourPictureBean result = users.get(0);
			result.setTourNo(bean.getTourNo());
			result.setTpicNo(bean.getTpicNo());
			result.setPictitle(bean.getPictitle());
			result.setPicDetail(bean.getPicDetail());
			result.setPic(bean.getPic());
			return result;
		}
		return null;
	}
	
}
