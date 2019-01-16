package model.rate.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.rate.RateBean;
import model.rate.RateDAO;
import model.rate.gb.Rate_USDBean;
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
		System.out.println("有連到DAO findAll");
		return this.getSession().createQuery("from RateBean where updateTime >= DATEADD(MONTH, -3, GETDATE())", RateBean.class)
				.list();
	}
	@Override
	public List<RateBean> findNew() {
		System.out.println("有連到DAO findNew");
		return this.getSession().createQuery("from RateBean where updateTime >= DATEADD(DAY, -1, GETDATE())", RateBean.class)
				.list();
	}
	
	@Override
	public List<RateBean> findAll01() {
		
		return this.getSession().createQuery("from RateBean where updateTime >= DATEADD(MONTH, -6, GETDATE())", RateBean.class)
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
