package model.tour.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.tour.TourTagsBean;

@Repository
public class TourTagsDAO {
		
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	
	public TourTagsBean findByPrimaryKey (Integer serialNo){
		return this.getSession().get(TourTagsBean.class, serialNo);
	}
	
	public List<TourTagsBean> findAll(){
		return this.getSession().createQuery("from TourTagsBean", TourTagsBean.class)
				.setMaxResults(100)
				.list();
	}
	
	public TourTagsBean create(TourTagsBean bean) {
				this.getSession().save(bean);
				return bean;
	}
	
	public TourTagsBean update(String tourNo,String tag,Integer serialNo) {
		TourTagsBean result = this.getSession().get(TourTagsBean.class, serialNo);
		if(result!=null) {
			result.setTourNo(tourNo);
			result.setTag(tag);		
			return result;
		}
		return null;

	}
	public boolean remove(Integer serialNo) {
		TourTagsBean result = this.getSession().get(TourTagsBean.class, serialNo);
		if(result!=null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}
}
