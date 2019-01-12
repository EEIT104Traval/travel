package model.userInfo.dao;

import java.util.Date;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.ticket.TicketInfoBean;
import model.ticket.TicketOrderInfoBean;
import model.tour.TourMemberInfoBean;
import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoDAO;

@Repository
public class UserInfoDAOHibernate implements UserInfoDAO {
	
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
		return this.getSession().createQuery("from UserInfoBean", UserInfoBean.class).setMaxResults(50).list();
	}

	@Override
	public UserInfoBean create(UserInfoBean bean) {
		if (bean != null) {
			UserInfoBean result = this.getSession().get(UserInfoBean.class, bean.getAccountName());
			if (result == null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public UserInfoBean update(byte[] password, String firstname, String lastname, String identityNo, String email,
			Date birth, String sex, String phone, String address, String authority, String gorfb, String loginId,
			String accountName) {
		UserInfoBean result = this.getSession().get(UserInfoBean.class, accountName);
		if (result != null) {
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
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}

	// --------------↓↓↓↓↓↓後台使用專區↓↓↓↓↓↓-------------

	@Override
	public List<UserInfoBean> findByaccountName(String accountName) {
		CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
		CriteriaQuery<UserInfoBean> criteria = criteriaBuilder.createQuery(UserInfoBean.class);
		Root<UserInfoBean> from = criteria.from(UserInfoBean.class);
		criteria.select(from).where(from.get("accountName").in(accountName));
		List<UserInfoBean> list = getSession().createQuery(criteria).getResultList();
		return list;

	}

	@Override
	public List<UserInfoBean> findByphone(String phone) {
		CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
		CriteriaQuery<UserInfoBean> criteria = criteriaBuilder.createQuery(UserInfoBean.class);
		Root<UserInfoBean> from = criteria.from(UserInfoBean.class);
		criteria.select(from).where(from.get("phone").in(phone));
		List<UserInfoBean> list = getSession().createQuery(criteria).getResultList();
		return list;

	}

}
