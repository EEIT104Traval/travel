package model.flight.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.flight.AirportCompareBean;
import model.flight.AirportCompareDAO;
import model.flight.FlightPassengerInfoBean;

@Repository
public class AirportCompareDAOHibernate implements AirportCompareDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	@Override
	public AirportCompareBean findByPrimaryKey(String airportCode) {
		return this.getSession().get(AirportCompareBean.class, airportCode);
	}

	@Override
	public AirportCompareBean create(AirportCompareBean bean) {
		if (bean != null) {
			AirportCompareBean result = this.getSession().get(AirportCompareBean.class, bean.getAirportCode());
			if (result == null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

}
