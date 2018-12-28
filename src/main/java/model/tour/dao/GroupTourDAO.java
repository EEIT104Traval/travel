package model.tour.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.tour.GroupTourBean;

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
//	public GroupTourBean create(String tag, String country, String tourName, String destination,
//                         Integer tourDays, Integer guaranteedCount, Integer fullPeopleCount, 
//                         Integer clickCount, String content, String tourNo) {
//		if(tourNo!=null) {
//			GroupTourBean result = this.getSession().get(GroupTourBean.class, bean.getTourNo());
//			if(result==null) {
//				this.getSession().save(bean);
//				return bean;
//			}
//		}
//		return null;
//	}
	public GroupTourBean update(String tag, String country, String tourName, String destination,
	                            Integer tourDays, Integer guaranteedCount, Integer fullPeopleCount, 
	                            Integer clickCount, String content, String tourNo) {
		GroupTourBean result = this.getSession().get(GroupTourBean.class, tourNo);
		if(result!=null) {
			result.setTag(tag);
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
}
