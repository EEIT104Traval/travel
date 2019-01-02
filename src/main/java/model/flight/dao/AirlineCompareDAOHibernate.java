package model.flight.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.flight.AirlineCompareBean;
import model.flight.AirlineCompareDAO;
@Repository
public class AirlineCompareDAOHibernate implements AirlineCompareDAO{
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	@Override
	public AirlineCompareBean findByPrimaryKey(String airlineCode) {
		return this.getSession().get(AirlineCompareBean.class, airlineCode);
	}

	@Override
	public AirlineCompareBean create(AirlineCompareBean bean) {
		if (bean != null) {
			AirlineCompareBean result = this.getSession().get(AirlineCompareBean.class, bean.getAirlineCode());
			if (result == null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	
	
	
}
