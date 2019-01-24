package model.flight.dao;

import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
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
		System.out.println("DAO方法開始");
		return this.getSession().get(AirlineCompareBean.class, airlineCode);
	}
	
	@Override
	public List<AirlineCompareBean> findByList(Set<String> code) {
		System.out.println("DAO方法開始");
		String hql = "from AirlineCompareBean where airlineCode in (:air)";
		Query<AirlineCompareBean> query = this.getSession().createQuery(hql, AirlineCompareBean.class);
		return query.setParameterList("air",code).list();
		
	}

	@Override
	public AirlineCompareBean create(AirlineCompareBean bean) {
		if (bean != null) {
			
			String code = bean.getAirlineCode();

			AirlineCompareBean result = this.getSession().get(AirlineCompareBean.class, bean.getAirlineCode());
			
			
			
			
			if (result == null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	
	
	
}
