package model.userInfo.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoDAO;

public class UserInfoDAOHibernate implements UserInfoDAO{
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	@Override
	public UserInfoDAO findByPrimaryKey(String username) {
		return this.getSession().get(UserInfoDAO.class, username);
	}

	@Override
	public List<UserInfoBean> findAll() {
		return this.getSession().createQuery("from ProductBean", UserInfoBean.class)
				.setMaxResults(50)
				.list();
	}

	@Override
	public UserInfoBean create(UserInfoBean bean) {
		return null;
	}

	@Override
	public UserInfoBean update(byte[] password, String firstname, String lastname, String identityNo, String email,
			Date birth, String sex, String phone, String address, String authority, String googleId, String facebookId,
			String username) {
		return null;
	}

	@Override
	public boolean remove(String username) {
		return false;
	}

	
}
