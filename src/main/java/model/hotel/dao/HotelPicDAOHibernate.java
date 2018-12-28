package model.hotel.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.hotel._01HotelBean;
import model.hotel._02HotelPicBean;
import model.hotel._02HotelPicDAO;
import model.ticket.TicketInfoBean;

@Repository
public class HotelPicDAOHibernate implements _02HotelPicDAO{
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	@Override
	public _02HotelPicBean findByPrimaryKey(Integer picNo) {
		return this.getSession().get(_02HotelPicBean.class, picNo);
	}

	@Override
	public List<_02HotelPicBean> findAll() {
		return this.getSession().createQuery("from _02HotelPicBean",_02HotelPicBean.class)
				.setMaxResults(50).list();
	}

	@Override
	public _02HotelPicBean create(_02HotelPicBean bean) {
		if (bean != null) {
			_02HotelPicBean result = this.getSession().get(_02HotelPicBean.class, bean.getHotelNo());
			if (result == null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public _02HotelPicBean update(Integer picNo, Integer hotelNo, String picName, String picDiscription, byte[] pic) {
		_02HotelPicBean result = this.getSession().get(_02HotelPicBean.class, picNo);
		if(result!=null) {
			result.setPicNo(picNo);
			result.setHotelNo(hotelNo);
			result.setPicName(picName);
			result.setPicDiscription(picDiscription);
			result.setPic(pic);
			return result;
		}
		return null;
	}

	@Override
	public boolean remove(Integer picNo) {
		_02HotelPicBean result = this.getSession().get(_02HotelPicBean.class, picNo);
		if(result != null) {
			this.getSession().delete(result);
			return true;
		}	
		return false;
	}

}
