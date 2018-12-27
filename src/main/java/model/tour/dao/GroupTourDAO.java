package model.tour.dao;

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
	
//	public boolean update(byte[] password, String email, Date birth, String custid) {
//		CustomerBean result = this.getSession().get(CustomerBean.class, custid);
//		if(result!=null) {
//			result.setPassword(password);
//			result.setEmail(email);
//			result.setBirth(birth);
//			return true;
//		}
//		return false;
//	}
}
