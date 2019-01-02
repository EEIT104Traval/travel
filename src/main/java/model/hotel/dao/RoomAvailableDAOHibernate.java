package model.hotel.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.hotel.HotelBean;
import model.hotel.RoomAvailableBean;
import model.hotel.RoomAvailableDAO;
import model.ticket.TicketInfoBean;

@Repository
public class RoomAvailableDAOHibernate implements RoomAvailableDAO{
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	@Override
	public RoomAvailableBean findByPrimaryKey(Integer serialNo) {
		return this.getSession().get(RoomAvailableBean.class, serialNo);
	}

	@Override
	public List<RoomAvailableBean> findAll() {
		return this.getSession().createQuery("from RoomAvailableBean",RoomAvailableBean.class)
				.setMaxResults(50).list();
	}

	@Override
	public RoomAvailableBean create(RoomAvailableBean bean) {
		if (bean != null) {
			RoomAvailableBean result = this.getSession().get(RoomAvailableBean.class, bean.getSerialNo());
			if (result == null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public RoomAvailableBean update(Integer serialNo, Integer hotelNo, String roomType, java.util.Date date, Integer totalRooms, Integer sale, Integer available, Integer notForSale) {
		RoomAvailableBean result = this.getSession().get(RoomAvailableBean.class, serialNo);
		if(result!=null) {
			result.setSerialNo(serialNo);
			result.setHotelNo(hotelNo);
			result.setRoomType(roomType);
			result.setDate(date);
			result.setTotalRooms(totalRooms);
			result.setSale(sale);
			result.setAvailable(available);
			result.setNotForSale(notForSale);
			return result;
		}
		return null;
	}

	@Override
	public boolean remove(Integer serialNo) {
		RoomAvailableBean result = this.getSession().get(RoomAvailableBean.class, serialNo);
		if(result != null) {
			this.getSession().delete(result);
			return true;
		}	
		return false;
	}

}
