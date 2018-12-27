package model.hotel.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import model.hotel._04RoomTypePicBean;
import model.hotel._05RoomLeftBean;
import model.hotel._05RoomLeftDAO;

public class RoomLeftBeanDAOHibernate implements _05RoomLeftDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	@Override
	public _05RoomLeftBean findByPrimaryKey(Integer picNo) {

		return this.getSession().get(_05RoomLeftBean.class, picNo);
	}

	@Override
	public List<_05RoomLeftBean> findAll() {

		return this.getSession().createQuery("from _05RoomLeftBean", _05RoomLeftBean.class).setMaxResults(50).list();
	}

	@Override
	public _05RoomLeftBean create(_05RoomLeftBean bean) {
		if (bean != null) {
			_05RoomLeftBean result = this.getSession().get(_05RoomLeftBean.class, bean.getPicNo());
			if (result == null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public _05RoomLeftBean update(Integer picNo,Integer roomTypeNo,String picName, byte[] pic, String picDiscription) {
		_05RoomLeftBean result = this.getSession().get(_05RoomLeftBean.class, picNo);
		if (result != null) {
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
		_05RoomLeftBean result = this.getSession().get(_05RoomLeftBean.class, picNo);
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}

}
