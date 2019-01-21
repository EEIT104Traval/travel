package model.hotel.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.hotel.RoomAvailableBean;
import model.hotel.RoomAvailableDAO;
import model.hotel.RoomTypeBean;

@Repository
public class RoomAvailableDAOHibernate implements RoomAvailableDAO {
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
		return this.getSession().createQuery("from RoomAvailableBean", RoomAvailableBean.class).setMaxResults(50)
				.list();
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
	public RoomAvailableBean update(RoomAvailableBean bean) {
		RoomAvailableBean result = this.getSession().get(RoomAvailableBean.class, bean.getSerialNo());
		if (result != null) {
			result.setSerialNo(bean.getSerialNo());
			result.setRoomTypeNo(bean.getRoomTypeNo());
			result.setDate(bean.getDate());
			result.setTotalRooms(bean.getTotalRooms());
			result.setSale(bean.getSale());
			result.setAvailable(bean.getAvailable());
			result.setNotForSale(bean.getNotForSale());
			return result;
		}
		return null;
	}

	@Override
	public boolean remove(Integer serialNo) {
		RoomAvailableBean result = this.getSession().get(RoomAvailableBean.class, serialNo);
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}

	@Override
	public List<RoomAvailableBean> searchByDate(java.util.Date date) {
		CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
		CriteriaQuery<RoomAvailableBean> criteria = criteriaBuilder.createQuery(RoomAvailableBean.class);
		Root<RoomAvailableBean> from = criteria.from(RoomAvailableBean.class);
		criteria.select(from).where(from.get("checkin_date").in(date));
		List<RoomAvailableBean> list = getSession().createQuery(criteria).getResultList();
		return list;
	}
	
	public List<RoomAvailableBean> findRoomByDate(List<RoomTypeBean> list){
		  EntityManager em = sessionFactory.createEntityManager();
		  CriteriaBuilder criteriaBuilder = this.getSession().getCriteriaBuilder();
	      CriteriaQuery<RoomAvailableBean> criteriaQuery = criteriaBuilder.createQuery(RoomAvailableBean.class);
	      Root<RoomAvailableBean> root = criteriaQuery.from(RoomAvailableBean.class);
	      CriteriaQuery<RoomAvailableBean> query = criteriaQuery.select(root);
	      List<Predicate> predicate =  new ArrayList<>();
	      for (RoomTypeBean room:list) {
	    	  predicate.add(criteriaBuilder.equal(root.get("roomTypeNo"), room.getRoomTypeNo()));
	      }
	      Predicate[] p = new Predicate[predicate.size()];
	      query.where(criteriaBuilder.or(predicate.toArray(p)));
	      return em.createQuery(query).getResultList();
	}

	@Override
	public RoomAvailableBean foundDate(Date date) {
		
		String hql = "from RoomAvailableBean where date = '"+date+"'" ;
		
		Query<RoomAvailableBean> OrderMonth = this.getSession().createQuery( hql ,RoomAvailableBean.class);	
		RoomAvailableBean orderDate = OrderMonth.uniqueResult();
		
		return orderDate;
	}

}
