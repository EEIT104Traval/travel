package model.rate.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.rate.RateBean;
import model.rate.RateNoticeBean;
import model.rate.RateNoticeDAO;



	@Repository
	public class RateNoticeDAOHibernate implements RateNoticeDAO{
			@Autowired
			private SessionFactory sessionFactory;
			
			public Session getSession() {
				return this.sessionFactory.getCurrentSession();
			}

	@Override
	public RateNoticeBean findByPrimaryKey(Integer serial) {
		return this.getSession().get(RateNoticeBean.class,serial);
	}

	@Override
	public List<RateNoticeBean> findAll() {
		return null;
	}

	@Override
	public RateNoticeBean create(RateNoticeBean bean) {
		return null;
	}

	@Override
	public RateNoticeBean update(Integer serial, String username, String currency, Double targetRate) {
		return null;
	}

	@Override
	public boolean remove(Integer serial) {
		return false;
	}

}
