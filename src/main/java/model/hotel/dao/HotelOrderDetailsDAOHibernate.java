package model.hotel.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.hotel.RoomTypePicBean;
import model.hotel.HotelOrderDetailsBean;
import model.hotel.HotelOrderDetailsDAO;
@Repository
public class HotelOrderDetailsDAOHibernate implements HotelOrderDetailsDAO{

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	@Override
	public HotelOrderDetailsBean findByPrimaryKey(Integer orderNo) {
		return this.getSession().get(HotelOrderDetailsBean.class , orderNo);
	}

	@Override
	public List<HotelOrderDetailsBean> findAll() {
		return this.getSession().createQuery("from HotelOrderDetailsBean",HotelOrderDetailsBean.class)
				.setMaxResults(50).list();
	}

	@Override
	public HotelOrderDetailsBean create(HotelOrderDetailsBean bean) {
		if (bean != null) {
			HotelOrderDetailsBean result = this.getSession().get(HotelOrderDetailsBean.class, bean.getOrderNo());
			if (result == null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public HotelOrderDetailsBean update(Integer orderNo, Integer hotelNo, String accountName, java.util.Date createDate, java.util.Date updateDate, String bookingPerson, String hotelName, String phone, java.util.Date bookingDate, java.util.Date checkIn, java.util.Date checkOut, String roomType, Integer roomPrice, Integer stayNights, Integer totalPrice, String info) {
		HotelOrderDetailsBean result = this.getSession().get(HotelOrderDetailsBean.class, orderNo);
		if (result != null) {
			result.setOrderNo(orderNo);
			result.setHotelNo(hotelNo);
			result.setAccountName(accountName);
			result.setCreateDate(createDate);
			result.setUpdateDate(updateDate);
			result.setBookingPerson(bookingPerson);
			result.setHotelName(hotelName);
			result.setPhone(phone);
			result.setBookingDate(bookingDate);
			result.setCheckIn(checkIn);
			result.setCheckOut(checkOut);
			result.setRoomType(roomType);
			result.setRoomPrice(roomPrice);
			result.setStayNights(stayNights);
			result.setTotalPrice(totalPrice);
			result.setInfo(info);
			return result;
		}
		return null;
	}

	@Override
	public boolean remove(Integer orderNo) {
		HotelOrderDetailsBean result = this.getSession().get(HotelOrderDetailsBean.class, orderNo);
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}
}
