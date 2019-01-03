package model.tour.dao;

import java.sql.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import model.tour.GroupTourBean;
import model.tour.TourBatchBean;

@Repository
public class TourBatchDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	public TourBatchBean findByPrimaryKey(Integer serialNo) {
		return this.getSession().get(TourBatchBean.class, serialNo);
	}

	public List<TourBatchBean> findAll() {
		return this.getSession().createQuery("from TourBatchBean", TourBatchBean.class).setMaxResults(100).list();
	}

	public TourBatchBean create(TourBatchBean bean) {
//		if(bean != null) {
//			TourBatchBean result = this.getSession().get(TourBatchBean.class, bean.getSerialNo());
		this.getSession().save(bean);
		return bean;
//		}	
//		return null;
	}

	public TourBatchBean update(String tourNo, Date departureDate, Integer peopleCount, Integer price_adult,
			Integer price_child, Integer price_baby, Integer discount, String airline_go, String distination_go,
			String airline_back, String distination_back, String content, Integer serialNo) {
		TourBatchBean result = this.getSession().get(TourBatchBean.class, serialNo);
		if (result != null) {
			result.setTourNo(tourNo);
			result.setDepartureDate(departureDate);
			result.setPeopleCount(peopleCount);
			result.setPrice_adult(price_adult);
			result.setPrice_child(price_child);
			result.setPrice_baby(price_baby);
			result.setDiscount(discount);
			result.setAirline_go(airline_go);
			result.setDistination_go(distination_go);
			result.setAirline_back(airline_back);
			result.setDistination_back(distination_back);
			result.setContent(content);
			return result;
		}
		return null;
	}

	public boolean remove(Integer serialNo) {
		TourBatchBean result = this.getSession().get(TourBatchBean.class, serialNo);
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}

}
