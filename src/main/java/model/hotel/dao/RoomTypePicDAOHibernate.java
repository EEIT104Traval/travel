package model.hotel.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.hotel._01HotelBean;
import model.hotel._04RoomTypePicBean;
import model.hotel._04RoomTypePicDAO;
import model.ticket.TicketInfoBean;

@Repository
public class RoomTypePicDAOHibernate implements _04RoomTypePicDAO{
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	@Override
	public _04RoomTypePicBean findByPrimaryKey(Integer picNo) {
		
		return this.getSession().get(_04RoomTypePicBean.class, picNo);
	}

	@Override
	public List<_04RoomTypePicBean> findAll() {
	
		return this.getSession().createQuery("from _04RoomTypePicBean",_04RoomTypePicBean.class).setMaxResults(50).list();
	}

	@Override
	public _04RoomTypePicBean create(_04RoomTypePicBean bean) {
		if (bean != null) {
			_04RoomTypePicBean result = this.getSession().get(_04RoomTypePicBean.class, bean.getPicNo());
			if (result == null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public _04RoomTypePicBean update(Integer picNo, Integer roomTypeNo, String picName, String pic, String picDiscription) {
		_04RoomTypePicBean result = this.getSession().get(_04RoomTypePicBean.class, picNo);
		if(result!=null) {
			result.setPicNo(picNo);
			result.setRoomTypeNo(roomTypeNo);
			result.setPicName(picName);
			result.setPic(pic);
			result.setPicDiscription(picDiscription);
			return result;
		}
		return null;
	}

	@Override
	public boolean remove(Integer picNo) {
		_04RoomTypePicBean result = this.getSession().get(_04RoomTypePicBean.class, picNo);
		if(result != null) {
			this.getSession().delete(result);
			return true;
		}	
		return false;
	}

}
