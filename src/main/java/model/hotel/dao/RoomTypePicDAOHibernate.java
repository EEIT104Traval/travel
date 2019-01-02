package model.hotel.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.hotel.HotelBean;
import model.hotel.RoomTypePicBean;
import model.hotel.RoomTypePicDAO;
import model.ticket.TicketInfoBean;

@Repository
public class RoomTypePicDAOHibernate implements RoomTypePicDAO{
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	@Override
	public RoomTypePicBean findByPrimaryKey(Integer picNo) {
		
		return this.getSession().get(RoomTypePicBean.class, picNo);
	}

	@Override
	public List<RoomTypePicBean> findAll() {
	
		return this.getSession().createQuery("from RoomTypePicBean",RoomTypePicBean.class).setMaxResults(50).list();
	}

	@Override
	public RoomTypePicBean create(RoomTypePicBean bean) {
		if (bean != null) {
			RoomTypePicBean result = this.getSession().get(RoomTypePicBean.class, bean.getPicNo());
			if (result == null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public RoomTypePicBean update(Integer picNo, Integer roomTypeNo, String pic) {
		RoomTypePicBean result = this.getSession().get(RoomTypePicBean.class, picNo);
		if(result!=null) {
			result.setPicNo(picNo);
			result.setRoomTypeNo(roomTypeNo);
			result.setPic(pic);
			return result;
		}
		return null;
	}

	@Override
	public boolean remove(Integer picNo) {
		RoomTypePicBean result = this.getSession().get(RoomTypePicBean.class, picNo);
		if(result != null) {
			this.getSession().delete(result);
			return true;
		}	
		return false;
	}

}
