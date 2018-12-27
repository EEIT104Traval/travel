package model.tour.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.tour.TourMemberInfoBean;

@Repository
public class TourMemberInfoDAOHibernate {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	public TourMemberInfoBean findByPrimaryKey(Integer serialNo) {
		return this.getSession().get(TourMemberInfoBean.class, serialNo);
	}
	
	public List<TourMemberInfoBean> findAll() {
		return this.getSession().createQuery("from TourMemberInfoBean", TourMemberInfoBean.class)
				.setMaxResults(50)
				.list();
	}
	
}
