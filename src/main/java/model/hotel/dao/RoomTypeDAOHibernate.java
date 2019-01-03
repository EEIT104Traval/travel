package model.hotel.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.hotel.RoomTypeBean;
import model.hotel.RoomTypeDAO;
import model.hotel.RoomAvailableBean;
import model.ticket.TicketInfoBean;

@Repository
public class RoomTypeDAOHibernate implements RoomTypeDAO{
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	@Override
	public RoomTypeBean findByPrimaryKey(Integer roomTypeNo) {
		return this.getSession().get(RoomTypeBean.class, roomTypeNo);
	}

	@Override
	public List<RoomTypeBean> findAll() {
		return this.getSession().createQuery("from RoomTypeBean",RoomTypeBean.class)
				.setMaxResults(50).list();
	}

	@Override
	public RoomTypeBean create(RoomTypeBean bean) {
		if (bean != null) {
			RoomTypeBean result = this.getSession().get(RoomTypeBean.class, bean.getRoomTypeNo());
			if (result == null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public RoomTypeBean update(Integer roomTypeNo, Integer hotelNo, String roomType, Integer totalRooms, Integer price) {
		RoomTypeBean result = this.getSession().get(RoomTypeBean.class, roomTypeNo);
		if(result!=null) {
			result.setRoomTypeNo(roomTypeNo);
			result.setHotelNo(hotelNo);
			result.setRoomType(roomType);
			result.setTotalRooms(totalRooms);
			result.setPrice(price);
			return result;
		}
		return null;
	}

	@Override
	public boolean remove(Integer roomTypeNo) {
		RoomTypeBean result = this.getSession().get(RoomTypeBean.class, roomTypeNo);
		if(result != null) {
			this.getSession().delete(result);
			return true;
		}	
		return false;
	}

}
