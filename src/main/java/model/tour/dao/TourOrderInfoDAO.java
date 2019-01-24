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
		
		String hql = "from TourOrderInfoBean where orderTime >= '2018/"+month+"/01 00:00:00' and orderTime <='2018/"+month+"/28 23:59:59'" ;
		
		Query<TourOrderInfoBean> OrderMonth = this.getSession().createQuery( hql ,TourOrderInfoBean.class);
		
		List<TourOrderInfoBean> OdMonth = OrderMonth.list();
		
		return OdMonth;
	}
}
