package model.rate.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.rate.RateBean;
import model.rate.RateDAO;
import model.rate.Rate_USDBean;
@Repository
public class RateDAOHibernate implements RateDAO{
		@Autowired
		private SessionFactory sessionFactory;
		
		public Session getSession() {
			return this.sessionFactory.getCurrentSession();
		}
		
	@Override
	public RateBean findByPrimaryKey(String currency) {
		return this.getSession().get(RateBean.class,currency);
	}

	@Override
	public List<RateBean> findAll() {
		return this.getSession().createQuery("from RateBean", RateBean.class)
				.setMaxResults(50)
				.list();
	}

	@Override
	public RateBean create(RateBean bean) {
		if(bean!=null) {
			Rate_USDBean result = this.getSession().get(Rate_USDBean.class, bean.getCurrency());
			if(result==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public RateBean update(String flag, String currency, Double cashBuy, Double cashSell, Double spotBuy,
			Double spotSell, String country) {
		return null;
	}

	@Override
	public boolean remove(String currency) {
		RateBean result = this.getSession().get(RateBean.class, currency);
		if(result!=null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}

	
}
