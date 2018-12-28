package model.hotel.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.hotel._01HotelBean;
import model.hotel._05RoomLeftBean;
import model.hotel._05RoomLeftDAO;
import model.ticket.TicketInfoBean;

@Repository
public class RoomLeftDAOHibernate implements _05RoomLeftDAO{
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	@Override
	public _05RoomLeftBean findByPrimaryKey(Integer serialNo) {
		return this.getSession().get(_05RoomLeftBean.class, serialNo);
	}

	@Override
	public List<_05RoomLeftBean> findAll() {
		return this.getSession().createQuery("from _05RoomLeftBean",_05RoomLeftBean.class)
				.setMaxResults(50).list();
	}

	@Override
	public _05RoomLeftBean create(_05RoomLeftBean bean) {
		if (bean != null) {
			_05RoomLeftBean result = this.getSession().get(_05RoomLeftBean.class, bean.getSerialNo());
			if (result == null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public _05RoomLeftBean update(Integer serialNo, Integer hotelNo, Integer roomLeft, Integer notForSale) {
		_05RoomLeftBean result = this.getSession().get(_05RoomLeftBean.class, serialNo);
		if(result!=null) {
			result.setRoomLeft(roomLeft);
			result.setHotelNo(hotelNo);
			result.setRoomLeft(roomLeft);
			result.setNotForSale(notForSale);
			return result;
		}
		return null;
	}

	@Override
	public boolean remove(Integer serialNo) {
		_05RoomLeftBean result = this.getSession().get(_05RoomLeftBean.class, serialNo);
		if(result != null) {
			this.getSession().delete(result);
			return true;
		}	
		return false;
	}

}
