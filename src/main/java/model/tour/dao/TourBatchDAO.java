package model.tour.dao;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.tour.GroupTourBean;
import model.tour.TourBatchBean;
import model.tour.TourOrderInfoBean;

@Repository
public class TourBatchDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	public TourBatchBean findByPrimaryKey(Integer serialNo) {
		return this.getSession().get(TourBatchBean.class, serialNo);
	}

	public List<TourBatchBean> findAll() {
		return this.getSession().createQuery("from TourBatchBean", TourBatchBean.class).setMaxResults(100).list();
	}
	
	public List<TourBatchBean> findByCountry(List<String> tourNoList,Date checkin_date,Date checkout_date) {
		java.sql.Date d1 = new java.sql.Date(checkin_date.getTime());   //轉換成 java.sql.Date 
		java.sql.Date d2 = new java.sql.Date(checkout_date.getTime());
//		CriteriaBuilder cb = getSession().getCriteriaBuilder();
//		CriteriaQuery<TourBatchBean> query = cb.createQuery(TourBatchBean.class);
//		Root<TourBatchBean> root = query.from(TourBatchBean.class);
//		List<Predicate> list = new ArrayList<Predicate>();
		String conditions ="";
		for (int i = 0 ; i <tourNoList.size(); i++) {
			if (i ==0) {
				conditions += " tourNo = " +tourNoList.get(i)+ 
						   "and departureDate >= '"+d1+"' and departureDate <= '"+d2+"'";
			} else {
				conditions += " or tourNo = "+tourNoList.get(i)+
						   "and departureDate >= '"+d1+"' and departureDate <= '"+d2+"'";
			}
		}
//		query.list().where()
		return this.getSession().createQuery("from TourBatchBean where "+ conditions, TourBatchBean.class)			
				.setMaxResults(1000)
				.list();
	} //conditions	+ " and departureDate >= '"+d1+"' and departureDate <= '"+d2+"'"

	public TourBatchBean create(TourBatchBean bean) {
//		if(bean != null) {
//			TourBatchBean result = this.getSession().get(TourBatchBean.class, bean.getSerialNo());
		this.getSession().save(bean);
		return bean;
//		}	
//		return null;
	}

	public TourBatchBean update(TourBatchBean bean) {
		TourBatchBean result = this.getSession().get(TourBatchBean.class, bean.getSerialNo());
		if (result != null) {
			result.setTourNo(bean.getTourNo());
			result.setDepartureDate(bean.getDepartureDate());
			result.setPeopleCount(bean.getPeopleCount());
			result.setPrice_adult(bean.getPrice_adult());
			result.setPrice_child(bean.getPrice_child());
			result.setPrice_baby(bean.getPrice_baby());
			result.setDiscount(bean.getDiscount());
			result.setAirline_go(bean.getAirline_go());
			result.setDistination_go(bean.getDistination_go());
			result.setAirline_back(bean.getAirline_back());
			result.setDistination_back(bean.getDistination_back());
			result.setContent(bean.getContent());
			return result;
		}
		return null;
	}
	
//	public TourBatchBean update1(Integer serialNo) { 尚未完成
//		TourBatchBean result = this.getSession().get(TourBatchBean.class, bean.getSerialNo());
//		if (result != null) {
//			result.setTourNo(bean.getTourNo());
//			result.setDepartureDate(bean.getDepartureDate());
//			result.setPeopleCount(bean.getPeopleCount());
//			result.setPrice_adult(bean.getPrice_adult());
//			result.setPrice_child(bean.getPrice_child());
//			result.setPrice_baby(bean.getPrice_baby());
//			result.setDiscount(bean.getDiscount());
//			result.setAirline_go(bean.getAirline_go());
//			result.setDistination_go(bean.getDistination_go());
//			result.setAirline_back(bean.getAirline_back());
//			result.setDistination_back(bean.getDistination_back());
//			result.setContent(bean.getContent());
//			return result;
//		}
//		return null;
//	}
	

	public boolean remove(Integer serialNo) {
		TourBatchBean result = this.getSession().get(TourBatchBean.class, serialNo);
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}
	
	public List<TourBatchBean> findByManyId(Set<Integer> serialNo){
		  String hql = "from TourBatchBean where serialNo in (:id)";
		  Query<TourBatchBean> query = this.getSession().createQuery(hql, TourBatchBean.class);
		  return query.setParameterList("id",serialNo).list();
	}
	
	public List<TourBatchBean> findTourNo(String tourNo) {
		CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
		CriteriaQuery<TourBatchBean> criteria = criteriaBuilder.createQuery(TourBatchBean.class);
		Root<TourBatchBean> from = criteria.from(TourBatchBean.class);
		criteria.select(from).where(from.get("tourNo").in(tourNo));
		List<TourBatchBean> list = getSession().createQuery(criteria).getResultList();
		return list;
	}

	//-----------------------------------------------------------------------------
	public List<TourBatchBean> findByTourOrderList(List<TourOrderInfoBean> list){
		  EntityManager em = sessionFactory.createEntityManager();
		  CriteriaBuilder criteriaBuilder = this.getSession().getCriteriaBuilder();
	      CriteriaQuery<TourBatchBean> criteriaQuery = criteriaBuilder.createQuery(TourBatchBean.class);
	      Root<TourBatchBean> root = criteriaQuery.from(TourBatchBean.class);
	      CriteriaQuery<TourBatchBean> query = criteriaQuery.select(root);
	      List<Predicate> predicate =  new ArrayList<>();
	      for (TourOrderInfoBean TourtOrder:list) {
	    	  predicate.add(criteriaBuilder.equal(root.get("serialNo"), TourtOrder.getSerialNo()));
	      }
	      Predicate[] p = new Predicate[predicate.size()];
	      query.where(criteriaBuilder.or(predicate.toArray(p)));
	      return em.createQuery(query).getResultList();
	}
	
	
}
