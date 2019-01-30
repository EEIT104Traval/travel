package model.ticket.dao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
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
	public List<TicketOrderInfoBean> finduser (String accountName) {
		CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
		CriteriaQuery<TicketOrderInfoBean> criteria = criteriaBuilder.createQuery(TicketOrderInfoBean.class);
		Root<TicketOrderInfoBean> from = criteria.from(TicketOrderInfoBean.class);
		criteria.select(from).where(from.get("accountName").in(accountName));
		List<TicketOrderInfoBean> list = getSession().createQuery(criteria).getResultList();
		return list;
	}
	@Override
	public List<Object> findaccountName (String accountName) {
		String sql2 = "select a.ticketName , b.orderDate , b.adultTicketCount , b.totalPrice from TicketInfo a , TicketOrderInfo b  where a.ticketNo = b.ticketNo and b.accountName ='"+accountName+"'";
		Query query = this.getSession().createSQLQuery(sql2);
		List<Object> acc = query.list();
		System.out.println(acc);
		return acc;
	}
	

	@Override
	public List<?> findaccountName1(String accountName) {
		
		String sql3 = "select a.ticketName , b.* from TicketInfo a , TicketOrderInfo b  where a.ticketNo = b.ticketNo and b.accountName ='"+accountName+"'";
		
//		@SuppressWarnings("unchecked")
		Query<?> query = this.getSession().createSQLQuery(sql3);
		
		List<?> account = query.list();
		
		return account;
	}

	
	
	
	@Override
	public TicketOrderInfoBean fundNumber(String accountName) {
		Query<TicketOrderInfoBean> a = this.getSession().createQuery("from TicketOrderInfoBean where accountName="+accountName,TicketOrderInfoBean.class);
		TicketOrderInfoBean TOIB = a.uniqueResult();
		return TOIB;	
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
	
	@Override
	public TicketOrderInfoBean removeOrder(Integer ticketOrderNO) {
		TicketOrderInfoBean result = this.getSession().get(TicketOrderInfoBean.class, ticketOrderNO);
		if (result != null) {
			this.getSession().delete(result);
			TicketOrderInfoBean remain = this.getSession().get(TicketOrderInfoBean.class, ticketOrderNO);
			return remain;
		}
		return result;
	}

}
