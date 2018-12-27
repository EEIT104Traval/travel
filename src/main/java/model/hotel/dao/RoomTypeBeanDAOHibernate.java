package model.hotel.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.hotel._04RoomTypePicBean;
import model.hotel._04RoomTypePicDAO;
@Repository
public class RoomTypeBeanDAOHibernate implements _04RoomTypePicDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	@Override
	public _04RoomTypePicBean findByPrimaryKey(Integer orderNo) {

		return this.getSession().get(_04RoomTypePicBean.class, orderNo);
	}

	@Override
	public List<_04RoomTypePicBean> findAll() {

		return this.getSession().createQuery("from _04RoomTypePicBean", _04RoomTypePicBean.class).setMaxResults(50)
				.list();
	}

	@Override
	public _04RoomTypePicBean create(_04RoomTypePicBean bean) {
		if (bean != null) {
			_04RoomTypePicBean result = this.getSession().get(_04RoomTypePicBean.class, bean.getOrderNo());
			if (result == null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public _04RoomTypePicBean update(Integer orderNo, Integer hotelNo, String hotelName, String username,
			String bookingPerson, Integer phone, Date bookingDate, Date checkIn, Date checkOut, String roomType,
			Integer totalprice, String info) {
		_04RoomTypePicBean result = this.getSession().get(_04RoomTypePicBean.class, orderNo);
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
		_04RoomTypePicBean result = this.getSession().get(_04RoomTypePicBean.class, orderNo);
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}

}
