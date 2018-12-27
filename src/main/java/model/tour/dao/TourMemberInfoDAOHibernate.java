package model.tour.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.tour.TourMemberInfoBean;

@Repository
public class TourMemberInfoDAOHibernate {
	
	
	public static void main(String[] args) {
		TourMemberInfoDAOHibernate t = new TourMemberInfoDAOHibernate();
		t.findByPrimaryKey(1);
		System.out.println(t);
	}
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	public TourMemberInfoBean findByPrimaryKey(Integer serialNo) {
		return this.getSession().get(TourMemberInfoBean.class, serialNo);
	}
}
