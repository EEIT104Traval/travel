package model.rate.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.rate.Rate_USDBean;
import model.rate.Rate_USDDAO;

@Repository
public class Rate_USDDAOHibernate implements Rate_USDDAO{
	@Autowired
	private SessionFactory sessionFactory;
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	@Override
	public Rate_USDBean findByPrimaryKey(Date updateTime) {
		return this.getSession().get(Rate_USDBean.class,updateTime);
	}

	@Override
	public List<Rate_USDBean> findAll() {
		return this.getSession().createQuery("from Rate_USDBean", Rate_USDBean.class)
				.setMaxResults(50)
				.list();
	}

	@Override
	public Rate_USDBean create(Rate_USDBean bean) {
		if(bean!=null) {
			Rate_USDBean result = this.getSession().get(Rate_USDBean.class, bean.getUpdateTime());
			if(result==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public Rate_USDBean update(Date updateTime, String currency, Double cashBuy, Double cashSell, Double spotBuy,
			Double spotSell, String country) {
		Rate_USDBean result = this.getSession().get(Rate_USDBean.class, updateTime); 
		if(result!=null) {
			result.setCashBuy(cashBuy);
			result.setCashSell(cashSell);
			result.setSpotBuy(spotBuy);
			result.setSpotSell(spotSell);
			return result;	
		}
		return null;
	}

	@Override
	public boolean remove(Date updateTime) {
		Rate_USDBean result = this.getSession().get(Rate_USDBean.class, updateTime);
		if(result!=null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}

	
}
