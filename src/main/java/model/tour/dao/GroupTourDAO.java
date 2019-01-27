package model.tour.dao;

import java.util.ArrayList;
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
	
	public List<GroupTourBean> findByClick() {
		return this.getSession().createQuery("from GroupTourBean where clickcount > 0  order by Clickcount DESC", GroupTourBean.class)
				.setMaxResults(100)
				.list();
	}
	
	public List<String> findByCountry(String country) {
		return this.getSession().createQuery("select tourNo from GroupTourBean where country = '"+country+"'", String.class)
				.setMaxResults(100)
				.list();
	}
	
	public List<GroupTourBean> findByList(Set<String> tourNo){
		  String hql = "from GroupTourBean where tourNo in (:no)";
		  Query<GroupTourBean> query = this.getSession().createQuery(hql, GroupTourBean.class);
		  return query.setParameterList("no",tourNo).list();
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
						
	public List<GroupTourBean> findByTourBatchList(List<TourBatchBean> list){
		  EntityManager em = sessionFactory.createEntityManager();
		  CriteriaBuilder criteriaBuilder = this.getSession().getCriteriaBuilder();
	      CriteriaQuery<GroupTourBean> criteriaQuery = criteriaBuilder.createQuery(GroupTourBean.class);
	      Root<GroupTourBean> root = criteriaQuery.from(GroupTourBean.class);
	      CriteriaQuery<GroupTourBean> query = criteriaQuery.select(root);
	      List<Predicate> predicate =  new ArrayList<>();
	      for (TourBatchBean tourBatch:list) {
	    	  predicate.add(criteriaBuilder.equal(root.get("tourNo"), tourBatch.getTourNo()));
	      }
	      Predicate[] p = new Predicate[predicate.size()];
	      query.where(criteriaBuilder.or(predicate.toArray(p)));
	      return em.createQuery(query).getResultList();
	}	
}
