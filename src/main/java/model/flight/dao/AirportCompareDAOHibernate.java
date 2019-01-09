package model.flight.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.flight.AirportCompareBean;
import model.flight.AirportCompareDAO;

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

	@Override
	public List<AirportCompareBean> findAll() {
		return this.getSession().createQuery("from AirportCompareBean", AirportCompareBean.class).setMaxResults(50)
				.list();
	}

	@Override
	public List<AirportCompareBean> findByAirportName(String AirportName) {
		String queryString = "from AirportCompareTable a where a.AirportName like'%" + AirportName + "%'";
		Query queryObject = this.getSession().createQuery(queryString,AirportCompareBean.class);
		return queryObject.list();
	}

}
