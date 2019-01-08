package model.hotel.dao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.hotel.HotelBean;
import model.hotel.HotelDAO;

@Repository
public class HotelDAOHibernate implements HotelDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	@Override
	public HotelBean findByPrimaryKey(Integer hotelNo) {
		return this.getSession().get(HotelBean.class, hotelNo);
	}

	@Override
	public List<HotelBean> findAll() {
		return this.getSession().createQuery("from HotelBean", HotelBean.class)
				.setMaxResults(50)
				.list();
	}
	
	@Override
	public HotelBean create(HotelBean bean) {
		if(bean!=null) {
			HotelBean result = this.getSession().get(HotelBean.class, bean.getHotelNo());
			if(result==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}
	
	@Override
	public HotelBean update(Integer hotelNo,  String hotelName, String country, String city, String address, String phone, String email, Integer hotelTotalRooms, String pic) {
		HotelBean result = this.getSession().get(HotelBean.class, hotelNo);
		
		if(result!=null) {
			result.setHotelNo(hotelNo);
			result.setHotelName(hotelName);
			result.setCountry(country);
			result.setCity(city);
			result.setAddress(address);
			result.setPhone(phone);
			result.setEmail(email);
			result.setHotelTotalRooms(hotelTotalRooms);
			result.setPic(pic);
			return result;
		}
		return null;
	}
	@Override
	public boolean remove(Integer hotelNo) {
		HotelBean result = this.getSession().get(HotelBean.class, hotelNo);
		
		if(result!=null) {
			this.getSession().delete(result);
			return true;
		}
		
		return false;
	}
	
	@Override
	public List<HotelBean> searchByCountry(String country) {
		CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
		CriteriaQuery<HotelBean> criteria = criteriaBuilder.createQuery(HotelBean.class);
		Root<HotelBean> from = criteria.from(HotelBean.class);
		criteria.select(from).where(from.get("country").in(country));
		List<HotelBean> list = getSession().createQuery(criteria).getResultList();
		return list;
	}
	

	
	
//
//	@SuppressWarnings("unchecked")
//	@Override
//	public List<HotelBean> searchByCountry(HotelBean bean) {
//		String sql = "from HotelBean where country = :country and city like :city";
//		Query<HotelBean> query = this.getSession().createQuery(sql);
//		
//		if (!StringUtils.containsWhitespace(bean.getCity())) {
//			bean.setCity("%");
//		}
//		
//		return query.setProperties(bean).list();
//	}

}
