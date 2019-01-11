package model.ticket.dao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

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
	public List<TicketOrderInfoBean> findOrderaccountName (String accountName) {
		CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
		CriteriaQuery<TicketOrderInfoBean> criteria = criteriaBuilder.createQuery(TicketOrderInfoBean.class);
		Root<TicketOrderInfoBean> from = criteria.from(TicketOrderInfoBean.class);
		criteria.select(from).where(from.get("accountName").in(accountName));
		List<TicketOrderInfoBean> list = getSession().createQuery(criteria).getResultList();
		return list;
	}
	@Override
	   public String foundName(Integer ticketNo) {
		System.out.println(ticketNo);

		return (String)this.getSession().createQuery("select ticketName from TicketInfoBean where ticketNo="+ticketNo+"").uniqueResult();
 	
 }
	
	@Override
	public TicketOrderInfoBean create(TicketOrderInfoBean bean) {

				this.getSession().save(bean);
				return bean;
	}

	@Override
	public TicketOrderInfoBean update(Integer ticketOrderNO, String accountName, Integer ticketNo,
			java.util.Date orderDate, java.util.Date useDate, Integer adultTicketCount, Integer childTicketCount,
			String recevingContact, String recevingAddress, String recevingPhone, Integer totalPrice) {
	
		TicketOrderInfoBean result = this.getSession().get(TicketOrderInfoBean.class, ticketOrderNO);
		if (result != null) {
			
			result.setAccountName(accountName);
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
