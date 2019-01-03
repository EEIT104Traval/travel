package model.flight.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.flight.FlightPassengerInfoDAO;
import model.flight.FlightPassengerInfoBean;

@Repository
public class FlightPassengerInfoDAOHibernate implements FlightPassengerInfoDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	@Override
	public FlightPassengerInfoBean findByPrimaryKey(Integer serialNO) {
		System.out.println("serialNO" + serialNO);
		return this.getSession().get(FlightPassengerInfoBean.class, serialNO);

	}

	@Override
	public List<FlightPassengerInfoBean> findAll() {
		return this.getSession().createQuery("from FlightPassengerInfoBean", FlightPassengerInfoBean.class)
				.setMaxResults(50).list();
	}

	@Override
	public FlightPassengerInfoBean create(FlightPassengerInfoBean bean) {
		if (bean != null) {
		FlightPassengerInfoBean result = this.getSession().get(FlightPassengerInfoBean.class, bean.getFlightTicketNO());
		if (result == null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

}
