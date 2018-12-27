package model.hotel.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.hotel._01HotelBean;
import model.hotel._01HotelDAO;

@Repository
public class HotelDAOHibernate implements _01HotelDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	@Override
	public _01HotelBean findByPrimaryKey(Integer hotelNo) {
		return this.getSession().get(_01HotelBean.class, hotelNo);
	}

	@Override
	public List<_01HotelBean> findAll() {
		return this.getSession().createQuery("from _01HotelBean", _01HotelBean.class)
				.setMaxResults(50)
				.list();
	}
	@Override
	public _01HotelBean create(_01HotelBean bean) {
		if(bean!=null) {
			_01HotelBean result = this.getSession().get(_01HotelBean.class, bean.getHotelNo());
			if(result==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}
	
	@Override
	public _01HotelBean update(Integer hotelNo, String hotelName, String address, Integer phone, String email, Integer totalroom) {
		_01HotelBean result = this.getSession().get(_01HotelBean.class, hotelNo);
		if(result!=null) {
			result.setHotelNo(hotelNo);
			result.setHotelName(hotelName);
			result.setAddress(address);
			result.setPhone(phone);
			result.setEmail(email);
			result.setTotalroom(totalroom);
			return result;
		}
		return null;
	}
	@Override
	public boolean remove(Integer hotelNo) {
		_01HotelBean result = this.getSession().get(_01HotelBean.class, hotelNo);
		if(result!=null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}

}
