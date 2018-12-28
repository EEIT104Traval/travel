package model.hotel.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.hotel._03RoomTypeBean;
import model.hotel._03RoomTypeDAO;
import model.hotel._05RoomLeftBean;
import model.ticket.TicketInfoBean;

@Repository
public class RoomTypeDAOHibernate implements _03RoomTypeDAO{
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	@Override
	public _03RoomTypeBean findByPrimaryKey(Integer hotelNo) {
		return this.getSession().get(_03RoomTypeBean.class, hotelNo);
	}

	@Override
	public List<_03RoomTypeBean> findAll() {
		return this.getSession().createQuery("from _03RoomTypeBean",_03RoomTypeBean.class)
				.setMaxResults(50).list();
	}

	@Override
	public _03RoomTypeBean create(_03RoomTypeBean bean) {
		if (bean != null) {
			_03RoomTypeBean result = this.getSession().get(_03RoomTypeBean.class, bean.getHotelNo());
			if (result == null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public _03RoomTypeBean update(Integer hotelNo, Integer roomTypeNo, String roomType, java.util.Date saleDate, Integer price) {
		_03RoomTypeBean result = this.getSession().get(_03RoomTypeBean.class, hotelNo);
		if(result!=null) {
			result.setHotelNo(hotelNo);
			result.setRoomTypeNo(roomTypeNo);
			result.setRoomType(roomType);
			result.setSaleDate(saleDate);
			result.setPrice(price);
			return result;
		}
		return null;
	}

	@Override
	public boolean remove(Integer hotelNo) {
		_03RoomTypeBean result = this.getSession().get(_03RoomTypeBean.class, hotelNo);
		if(result != null) {
			this.getSession().delete(result);
			return true;
		}	
		return false;
	}

}
