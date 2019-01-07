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
	public RateBean findByPrimaryKey(Integer serial) {
		return this.getSession().get(RateBean.class,serial);
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
			RateBean result = this.getSession().get(RateBean.class, bean.getSerial());
			if(result==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public RateBean update(Integer serial,String currency,java.util.Date updateTime,Double cashBuy,
			Double cashSell,Double spotBuy,Double spotSell,String country) {
		return null;
	}

	@Override
	public boolean remove(Integer serial) {
		RateBean result = this.getSession().get(RateBean.class, serial);
		if(result!=null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}

	
}
