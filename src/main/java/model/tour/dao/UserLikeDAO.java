package model.tour.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.tour.GroupTourBean;
import model.tour.UserLikeBean;


@Repository
public class UserLikeDAO {
	@Autowired
	private SessionFactory sessionFactory;
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	public UserLikeBean findByPrimaryKey (Integer serialNo){
		return this.getSession().get(UserLikeBean.class, serialNo);
	}
	
	public String findByAcc(String accountName) {
		return (String)this.getSession().createQuery("from UserLikeBean where accountName = '"+accountName+"'").uniqueResult();
	}
	
	public UserLikeBean create(UserLikeBean bean) {
		if(bean!=null) {
			UserLikeBean result = this.getSession().get(UserLikeBean.class, bean.getTourNo());
			if(result==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}
	
}
