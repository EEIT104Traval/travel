package model.flight.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.flight.FlightOrderInfoBean;
import model.flight.FlightOrderInfoDAO;

@Repository
public class FlightOrderInfoDAOHibernate implements FlightOrderInfoDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	@Override
	public FlightOrderInfoBean findByPrimaryKey(Integer flightOrderNO) {
		return this.getSession().get(FlightOrderInfoBean.class, flightOrderNO);
	}

	@Override

	public List<FlightOrderInfoBean> findAll() {
		return this.getSession().createQuery("from FlightOrderInfoBean", FlightOrderInfoBean.class).setMaxResults(50)
				.list();
	}

	@Override
	public FlightOrderInfoBean create(FlightOrderInfoBean bean) {
		if (bean != null) {

			this.getSession().save(bean);
			return bean;

		}
		return null;
	}

	@Override
	public FlightOrderInfoBean update(FlightOrderInfoBean bean) {
		FlightOrderInfoBean result = this.getSession().get(FlightOrderInfoBean.class, bean.getFlightOrderNO());
		if(result!=null) {
			result.setAccountName(bean.getAccountName());
			result.setContactGender(bean.getContactGender());
			result.setContactLastNameCN(bean.getContactLastNameCN());
			result.setContactFirstNameCN(bean.getContactFirstNameCN());
			result.setBookingCode(bean.getBookingCode());
			result.setPhone(bean.getPhone());
			result.setEmail(bean.getEmail());
			result.setAdultCount(bean.getAdultCount());
			result.setChildCount(bean.getChildCount());
			result.setDealDate(bean.getDealDate());
			result.setOrderStatus(bean.getOrderStatus());
			
			return result;
		}
		return null;
	}

	@Override
	public boolean remove(Integer flightOrderNO) {
		FlightOrderInfoBean result = this.getSession().get(FlightOrderInfoBean.class, flightOrderNO);
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	
	}
	
	public List<?> findByAccound(String account) {
		
		
//		String hql = "select foi,fpi,ft from FlightOrderInfoBean foi,FlightPassengerInfoBean fpi,FlightTicketBean ft";
//				+" where foi.flightOrderNO = fpi.flightOrderNO  and fpi.flightOrderNO = ft.flightOrderNO and foi.accountName='"
//				+account+"'" ;
		
		
		String hql = "select a,b,c " + 
				 
				" from FlightOrderInfo a,FlightPassengerInfo b,FlightTicket c " + 
				
				"where a.flightOrderNO = b.flightOrderNO  and b.flightOrderNO = c.flightOrderNO and a.accountName='MICKY'";
		
		Query query = this.getSession().createQuery(hql);
		List<Object[]> list = query.list();
		Object[] array = list.get(0);
		FlightOrderInfoBean bean = (FlightOrderInfoBean)array[0];
		System.out.println(bean);
		return list;
	}
	

}
