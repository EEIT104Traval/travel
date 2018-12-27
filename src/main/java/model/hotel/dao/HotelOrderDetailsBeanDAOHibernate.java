package model.hotel.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import model.hotel._04RoomTypePicBean;
import model.hotel._06HotelOrderDetailsBean;
import model.hotel._06HotelOrderDetailsDAO;

public class HotelOrderDetailsBeanDAOHibernate implements _06HotelOrderDetailsDAO{

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	@Override
	public _06HotelOrderDetailsBean findByPrimaryKey(Integer orderNo) {
		
		return this.getSession().get(_06HotelOrderDetailsBean.class , orderNo);
	}

	@Override
	public List<_06HotelOrderDetailsBean> findAll() {
		
		return this.getSession().createQuery("from _06HotelOrderDetailsBean",_06HotelOrderDetailsBean.class).setMaxResults(50)
				.list();
	}

	@Override
	public _06HotelOrderDetailsBean create(_06HotelOrderDetailsBean bean) {
		if (bean != null) {
			_06HotelOrderDetailsBean result = this.getSession().get(_06HotelOrderDetailsBean.class, bean.getOrderNo());
			if (result == null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public _06HotelOrderDetailsBean update(Integer orderNo, Integer hotelNo, String hotelName, String username,
			String bookingPerson, String phone, Date bookingDate, Date checkIn, Date checkOut, String roomType,
			Integer totalprice, String info) {
		_06HotelOrderDetailsBean result = this.getSession().get(_06HotelOrderDetailsBean.class, orderNo);
		if (result != null) {
			result.setOrderNo(orderNo);
			result.setHotelNo(hotelNo);
			result.setHotelName(hotelName);
			result.setUsername(username);
			result.setBookingPerson(bookingPerson);
			result.setPhone(phone);
			result.setBookingDate(bookingDate);
			result.setCheckIn(checkIn);
			result.setCheckOut(checkOut);
			result.setRoomType(roomType);
			result.setTotalprice(totalprice);
			result.setInfo(info);
			return result;
		}
		return null;
	}

	@Override
	public boolean remove(Integer orderNo) {
		_06HotelOrderDetailsBean result = this.getSession().get(_06HotelOrderDetailsBean.class, orderNo);
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}
}
