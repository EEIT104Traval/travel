package model.tour.dao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.tour.TourOrderInfoBean;


@Repository
public class TourOrderInfoDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	public TourOrderInfoBean findByPrimaryKey(Integer orderNo) {
		return this.getSession().get(TourOrderInfoBean.class, orderNo);
	}

	public List<TourOrderInfoBean> findAll() {
		return this.getSession().createQuery("from TourOrderInfoBean", TourOrderInfoBean.class).setMaxResults(100)
				.list();
	}

	public TourOrderInfoBean create(TourOrderInfoBean bean) {
		this.getSession().save(bean);
		return bean;
	}

	public TourOrderInfoBean update(TourOrderInfoBean bean) {
		TourOrderInfoBean result = this.getSession().get(TourOrderInfoBean.class, bean.getOrderNo());
		System.out.println(result);
		if (result != null) {
			result.setSerialNo(bean.getSerialNo());
			result.setAccountName(bean.getAccountName());
			result.setFullName(bean.getFullName());
			result.setPhone(bean.getPhone());
			result.setEmail(bean.getEmail());
			result.setSex(bean.getSex());
			result.setQuantity(bean.getQuantity());
			result.setTotal(bean.getTotal());
			result.setOrderStatus(bean.getOrderStatus());
			result.setOrderTime(bean.getOrderTime());
			return result;
		}
		return null;
	}

	public boolean remove(Integer orderNo) {
		TourOrderInfoBean result = this.getSession().get(TourOrderInfoBean.class, orderNo);
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}
	
	public List<TourOrderInfoBean> accountName(String accountName){
		List<TourOrderInfoBean> result = null;
		return result;
	}
	
	 public List<Object> findByAccound(String account) {
//		  String sql = "select a.contactGender,a.contactLastNameCN from FlightOrderInfo a, FlightPassengerInfo b, FlightTicket c where a.flightOrderNO = b.flightOrderNO and a.flightOrderNO = c.flightOrderNo and a.accountName='MICKY'";
		  
		String sql2 = "select a.tourNo tourNo , a.tourName , b.departureDate , c.orderNo , c.accountName , c.fullName , c.email , c.phone , c.orderStatus , c.orderTime , c.quantity , c.total , c.sex from GroupTour a , TourBatch b , TourOrderInfo c where a.tourNo = b.tourNo and b.serialNo = c.serialNo and c.accountName = '"+account+"'";
		@SuppressWarnings("unchecked")
		Query<Object>  query = this.getSession().createSQLQuery(sql2);
		  List<Object> list = query.list();
		  System.out.println("list0=" + list.get(0));
		  System.out.println("list=" + list.size());
		  return list;
		 }

	//查詢訂單------------------------後台寫的---------------------------
	
	public List<TourOrderInfoBean> findOrderaccountName (String accountName){
		CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
		CriteriaQuery<TourOrderInfoBean> criteria = criteriaBuilder.createQuery(TourOrderInfoBean.class);
		Root<TourOrderInfoBean> from = criteria.from(TourOrderInfoBean.class);
		criteria.select(from).where(from.get("accountName").in(accountName));
		List<TourOrderInfoBean> list = getSession().createQuery(criteria).getResultList();
		return list;
		}


	public List<TourOrderInfoBean> findBuyMonth(Integer month) {
		
		String hql = null;
		if(month == 1 || month == 3 || month == 5|| month == 7|| month == 8|| month == 10|| month == 12 ) {			
			hql = "from TourOrderInfoBean where orderTime >= '2018/"+month+"/01 00:00:00' and orderTime <='2018/"+month+"/31 23:59:59'" ;
		}else if(month == 4 || month == 6 || month == 9|| month == 11) {
		    hql = "from TourOrderInfoBean where orderTime >= '2018/"+month+"/01 00:00:00' and orderTime <='2018/"+month+"/30 23:59:59'" ;
		}else if(month == 2) {
			hql = "from TourOrderInfoBean where orderTime >= '2018/"+month+"/01 00:00:00' and orderTime <='2018/"+month+"/28 23:59:59'" ;
		}
		
		Query<TourOrderInfoBean> OrderMonth = this.getSession().createQuery( hql ,TourOrderInfoBean.class);
		
		List<TourOrderInfoBean> OdMonth = OrderMonth.list();
		
		return OdMonth;
	}
}
