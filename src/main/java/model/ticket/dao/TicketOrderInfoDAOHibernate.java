package model.ticket.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.ticket.TicketOrderInfoBean;
import model.ticket.TicketOrderInfoDAO;
@Repository
public class TicketOrderInfoDAOHibernate implements TicketOrderInfoDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	@Override
	public TicketOrderInfoBean findByPrimaryKey(Integer ticketOrderNO) {

		return this.getSession().get(TicketOrderInfoBean.class, ticketOrderNO);
	}

	@Override
	public List<TicketOrderInfoBean> findAll() {

		return this.getSession().createQuery("from TicketOrderInfoBean", TicketOrderInfoBean.class).setMaxResults(50)
				.list();
	}

	@Override
	public TicketOrderInfoBean create(TicketOrderInfoBean bean) {

				this.getSession().save(bean);
				return bean;
	}

	@Override
	public TicketOrderInfoBean update(Integer ticketOrderNO, String username, Integer ticketNo,
			java.util.Date orderDate, java.util.Date useDate, Integer adultTicketCount, Integer childTicketCount,
			String recevingContact, String recevingAddress, String recevingPhone, Integer totalPrice) {
	
		TicketOrderInfoBean result = this.getSession().get(TicketOrderInfoBean.class, ticketOrderNO);
		if (result != null) {
			
			result.setUsername(username);
			result.setTicketNo(ticketNo);
			result.setOrderDate(orderDate);
			result.setUseDate(useDate);
			result.setAdultTicketCount(adultTicketCount);
			result.setChildTicketCount(childTicketCount);
			result.setRecevingContact(recevingContact);
			result.setRecevingAddress(recevingAddress);
			result.setRecevingPhone(recevingPhone);
			result.setTotalPrice(totalPrice);

			return result;
		}
		return null;
	}

	@Override
	public boolean remove(Integer ticketOrderNO) {
		TicketOrderInfoBean result = this.getSession().get(TicketOrderInfoBean.class, ticketOrderNO);
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}
}
