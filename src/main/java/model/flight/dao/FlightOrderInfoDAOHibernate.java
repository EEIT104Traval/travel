package model.flight.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
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

	public List<FlightOrderInfoBean> findByAccountName(String account) {
//		if (account != null && account.isEmpty()) {
			System.out.println("account==>"+account);
			return this.getSession().createQuery("from FlightOrderInfoBean where accountName = '" + account + "'",
					FlightOrderInfoBean.class).setMaxResults(50).list();
//		} else {
//			System.out.println("account==>null");
//			return null;
//		}
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
		if (result != null) {
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
////		String hql = "from FlightOrderInfoBean, FlightPassengerInfoBean, FlightTicketBean where FlightOrderInfoBean.flightOrderNO = FlightPassengerInfoBean.flightOrderNO and FlightPassengerInfoBean.flightOrderNO = FlightTicketBean.flightOrderNo and FlightOrderInfoBean.accountName='MICKY'";
//		String hql = "from FlightOrderInfoBean, FlightPassengerInfoBean, FlightTicketBean where FlightOrderInfoBean.flightOrderNO = FlightPassengerInfoBean.flightOrderNO";
//		Query query = this.getSession().createQuery(hql);
//		List<Object[]> list = query.list();
//		System.out.println("list="+list.size());
//		Object[] array = list.get(0);
//		System.out.println("array="+array.length);
//		FlightOrderInfoBean bean = (FlightOrderInfoBean) array[0];
//		System.out.println(bean);

		String sql = "select a.contactGender,a.contactLastNameCN from FlightOrderInfo a, FlightPassengerInfo b, FlightTicket c where a.flightOrderNO = b.flightOrderNO and a.flightOrderNO = c.flightOrderNo and a.accountName='MICKY'";
		NativeQuery query = this.getSession().createSQLQuery(sql);
		List list = query.list();
		System.out.println("list0=" + list.get(0));
		System.out.println("list=" + list.size());
		return list;
	}

}
