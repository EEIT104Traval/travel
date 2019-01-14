package model.tour.dao;

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

import model.tour.GroupTourBean;
import model.tour.TourOrderInfoBean;

@Repository
public class GroupTourDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	public GroupTourBean findByPrimaryKey(String tourNo) {
		return this.getSession().get(GroupTourBean.class, tourNo);
	}
	
	
	public List<GroupTourBean> findAll() {
		return this.getSession().createQuery("from GroupTourBean", GroupTourBean.class)
				.setMaxResults(100)
				.list();
	}
	
	
    public Long countAll() {
    	return (Long)this.getSession().createQuery("select count(*) from GroupTourBean").uniqueResult();
    }
    
	public GroupTourBean create(GroupTourBean bean) {
		if(bean!=null) {
			GroupTourBean result = this.getSession().get(GroupTourBean.class, bean.getTourNo());
			if(result==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	public GroupTourBean update(String country, String tourName, String destination,
	                            Integer tourDays, Integer guaranteedCount, Integer fullPeopleCount, 
	                            Integer clickCount, String content, String tourNo) {
		GroupTourBean result = this.getSession().get(GroupTourBean.class, tourNo);
		if(result!=null) {			
			result.setCountry(country);
			result.setTourName(tourName);
			result.setDestination(destination);
			result.setTourDays(tourDays);
			result.setGuaranteedCount(guaranteedCount);
			result.setFullPeopleCount(fullPeopleCount);
			result.setClickCount(clickCount);
			result.setContent(content);
			
			
			return result;
		}
		return null;
	}
	public boolean remove(String tourNo) {
		GroupTourBean result = this.getSession().get(GroupTourBean.class, tourNo);
		if(result!=null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}
//--------------------------------------後台----------------------------------------
						
	public List<GroupTourBean> findByTourOrderList(List<TourOrderInfoBean> list){
		EntityManager em = sessionFactory.createEntityManager();
		  CriteriaBuilder criteriaBuilder = this.getSession().getCriteriaBuilder();
	      CriteriaQuery<GroupTourBean> criteriaQuery = criteriaBuilder.createQuery(GroupTourBean.class);
	      Root<GroupTourBean> root = criteriaQuery.from(GroupTourBean.class);
	      CriteriaQuery<GroupTourBean> query = criteriaQuery.select(root);
	      List<Predicate> predicate =  new ArrayList<>();
	      for (TourOrderInfoBean tourOrder:list) {
	    	  predicate.add(criteriaBuilder.equal(root.get("tourNo"), tourOrder.getSerialNo()));
	      }
//	      if (!StringUtils.isEmpty(tourNo)) {
//	    	  predicate.add(criteriaBuilder.between(root.get("tourNo"), tourOrder.getSerialNo()));
//	      }
	      Predicate[] p = new Predicate[predicate.size()];
	      query.where(criteriaBuilder.or(predicate.toArray(p)));
	      return em.createQuery(query).getResultList();
	}	
}
