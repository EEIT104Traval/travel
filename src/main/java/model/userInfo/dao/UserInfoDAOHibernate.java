package model.userInfo.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoDAO;

@Repository
public class UserInfoDAOHibernate implements UserInfoDAO{
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	@Override
	public UserInfoBean findByPrimaryKey(String accountName) {
		return this.getSession().get(UserInfoBean.class, accountName);
	}

	@Override
	public List<UserInfoBean> findAll() {
		return this.getSession().createQuery("from UserInfoBean", UserInfoBean.class)
				.setMaxResults(50)
				.list();
	}

	@Override
	public UserInfoBean create(UserInfoBean bean) {
		if(bean!=null) {
			UserInfoBean result = this.getSession().get(UserInfoBean.class, bean.getAccountName());
			if(result==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public UserInfoBean update(String password, String firstname, String lastname, String identityNo, String email,
			Date birth, String sex, String phone, String address, String authority, String gorfb, String loginId,
			String accountName) {
		UserInfoBean result = this.getSession().get(UserInfoBean.class, accountName);
		if(result!=null) {
			result.setPassword(password);
			result.setFirstname(firstname);
			result.setLastname(lastname);
			result.setIdentityNo(identityNo);
			result.setEmail(email);
			result.setBirth(birth);
			result.setSex(sex);
			result.setPhone(phone);
			result.setAddress(address);
			result.setAuthority(authority);
			result.setGorfb(gorfb);
			result.setLoginId(loginId);
			return result;
		}
		return null;
	}

	
	
	@Override
	public boolean remove(String accountName) {
		UserInfoBean result = this.getSession().get(UserInfoBean.class, accountName);
		if(result!=null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}

	
}
