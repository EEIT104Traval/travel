package model.rate.gb;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.userInfo.UserInfoBean;
@Repository
public class Rate_JPYDAOHibernate implements Rate_JPYDAO{
	@Autowired
	private SessionFactory sessionFactory;
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	@Override
	public Rate_JPYBean findByPrimaryKey(Date updateTime) {
		return this.getSession().get(Rate_JPYBean.class,updateTime);
	}

	@Override
	public List<Rate_JPYBean> findAll() {
		return this.getSession().createQuery("from Rate_JPYBean", Rate_JPYBean.class)
				.setMaxResults(50)
				.list();
	}

	@Override
	public Rate_JPYBean create(Rate_JPYBean bean) {
		if(bean!=null) {
			Rate_JPYBean result = this.getSession().get(Rate_JPYBean.class, bean.getUpdateTime());
			if(result==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public Rate_JPYBean update(Date updateTime, String currency, Double cashBuy, Double cashSell, Double spotBuy,
			Double spotSell, String country) {
		Rate_JPYBean result = this.getSession().get(Rate_JPYBean.class, updateTime); 
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
		Rate_JPYBean result = this.getSession().get(Rate_JPYBean.class, updateTime);
		if(result!=null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}

	
}
