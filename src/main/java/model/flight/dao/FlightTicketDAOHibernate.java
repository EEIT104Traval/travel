package model.flight.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.flight.FlightTicketBean;
import model.flight.FlightTicketDAO;
@Repository
public class FlightTicketDAOHibernate implements FlightTicketDAO{
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	@Override
	public FlightTicketBean findByPrimaryKey(Integer serial) {
		return this.getSession().get(FlightTicketBean.class, serial);
	}

	@Override
	public List<FlightTicketBean> findAll() {
		return this.getSession().createQuery("from FlightTicketBean", FlightTicketBean.class).setMaxResults(50)
				.list();
	}

	@Override
	public FlightTicketBean create(FlightTicketBean bean) {
		if (bean != null) {

			this.getSession().save(bean);
			return bean;

		}
		return null;
	}

}
