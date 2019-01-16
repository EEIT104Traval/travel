package model.tour.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.ticket.TicketOrderInfoBean;
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

	public TourBatchBean create(TourBatchBean bean) {
//		if(bean != null) {
//			TourBatchBean result = this.getSession().get(TourBatchBean.class, bean.getSerialNo());
		this.getSession().save(bean);
		return bean;
//		}	
//		return null;
	}

	public TourBatchBean update(String tourNo, Date departureDate, Integer peopleCount, Integer price_adult,
			Integer price_child, Integer price_baby, Integer discount, String airline_go, String distination_go,
			String airline_back, String distination_back, String content, Integer serialNo) {
		TourBatchBean result = this.getSession().get(TourBatchBean.class, serialNo);
		if (result != null) {
			result.setTourNo(tourNo);
			result.setDepartureDate(departureDate);
			result.setPeopleCount(peopleCount);
			result.setPrice_adult(price_adult);
			result.setPrice_child(price_child);
			result.setPrice_baby(price_baby);
			result.setDiscount(discount);
			result.setAirline_go(airline_go);
			result.setDistination_go(distination_go);
			result.setAirline_back(airline_back);
			result.setDistination_back(distination_back);
			result.setContent(content);
			return result;
		}
		return null;
	}

	public boolean remove(Integer serialNo) {
		TourBatchBean result = this.getSession().get(TourBatchBean.class, serialNo);
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
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
