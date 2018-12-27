package model.ticket.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.ticket.TicketInfoBean;
import model.ticket.TicketInfoDAO;

@Repository
public class TicketInfoDAOHibernate implements TicketInfoDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	@Override
	public TicketInfoBean findByPrimaryKey(Integer ticketNo) {
		
		return this.getSession().get(TicketInfoBean.class, ticketNo);
	}
	
	@Override
	public TicketInfoBean findByticketName(String ticketName) {
		
		return this.getSession().get(TicketInfoBean.class, ticketName);
	}
	
	@Override
	public TicketInfoBean findByticketDate(java.util.Date validity) {
		
		return this.getSession().get(TicketInfoBean.class, validity);
	}
	
	@Override
	public TicketInfoBean findByticketCountry(String country) {
		
		return this.getSession().get(TicketInfoBean.class, country);
	}
	
	@Override
	public TicketInfoBean create(TicketInfoBean bean) {
		
		if (bean != null) {
			TicketInfoBean result = this.getSession().get(TicketInfoBean.class, bean.getTicketNo());
			if (result == null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}
	
	@Override
	public TicketInfoBean update(Integer ticketNo, String ticketName, java.util.Date validity, Integer adultTicketPrice,
			Integer childTicketPrice, Integer adultTicketSellQ, Integer childTicketSellQ, Integer adultTicketSelledQ,
			Integer childTicketSelledQ, String country, String category, String productFeatures, Byte[] ticketPicture,
			String ticketDescription, String traffic_information, String special_restrictions,
			String googleAddressOrName) {
		TicketInfoBean result = this.getSession().get(TicketInfoBean.class, ticketNo);
		if (result != null) {
			result.setTicketNo(ticketNo);
			result.setTicketName(ticketName);
			result.setValidity(validity);
			result.setAdultTicketPrice(adultTicketPrice);
			result.setChildTicketPrice(childTicketPrice);
			result.setAdultTicketSellQ(adultTicketSellQ);
			result.setChildTicketSellQ(childTicketSellQ);
			result.setAdultTicketSelledQ(adultTicketSelledQ);
			result.setChildTicketSelledQ(childTicketSelledQ);
			result.setCountry(country);
			result.setCategory(category);
			result.setProductFeatures(productFeatures);
			result.setTicketPicture(ticketPicture);
			result.setTicketDescription(ticketDescription);
			result.setTraffic_information(traffic_information);
			result.setSpecial_restrictions(special_restrictions);
			result.setGoogleAddressOrName(googleAddressOrName);
			
			return result;
		}
		return null;
	}
	
	@Override
	public boolean remove(Integer ticketNo) {
		TicketInfoBean result = this.getSession().get(TicketInfoBean.class, ticketNo);
		if(result != null) {
			this.getSession().delete(result);
			return true;
		}	
		return false;
	}
	
	@Override
	public List<TicketInfoBean> findAll() {
		
		return this.getSession().createQuery("from TicketInfoBean",TicketInfoBean.class).setMaxResults(50).list();
	}
}
//	@Override
//	public ProductBean findByPrimaryKey(int id) {
//		//利用id作為primary key取得product table資料
//		//id存在=>傳回裝滿資料的ProductBean物件
//		//id不存在=>傳回null
//		return this.getSession().get(ProductBean.class,id);
//	}
//	@Override
//	public List<ProductBean> findAll() {
//		//取得product table的所有資料
//		Query query =  this.getSession().createQuery("from ProductBean");
//		return (List<ProductBean>)query.list();
//		return this.getSession().createQuery("from ProductBean",ProductBean.class).list();
//	}
//	@Override
//	public ProductBean create(ProductBean bean) {
//		//將ProductBean物件的資料存入product table
//		//id已存在=>新增失敗、傳回null
//		//id不存在=>新增成功、傳回裝滿資料的ProductBean物件
//		if(bean!=null) {
//			ProductBean result = this.getSession().get(ProductBean.class,bean.getId());
//			if(result==null) {
//				this.getSession().save(bean);
//				return bean;
//			}
//		}
//		return null;
//	}
//	@Override
//	public ProductBean update(String name, double price, Date make, int expire, int id) {
//		//利用id作為primary key修改product table資料
//		//id存在=>修改成功、傳回裝滿資料的ProductBean物件
//		//id不存在=>修改失敗、傳回null
//		ProductBean result = this.getSession().get(ProductBean.class, id);
//		if(result!=null) {
//			result.setName(name);
//			result.setPrice(price);
//			result.setMake(make);
//			result.setExpire(expire);
//			return result;
//			
//		}
//		return null;
//	}
//	@Override
//	public boolean remove(int id) {
//		//利用id作為primary key刪除product table資料
//		//id存在=>刪除product table資料並傳回true
//		//id不存在=>傳回false
//		ProductBean result = this.getSession().get(ProductBean.class, id);
//		if(result!=null) {
//			this.getSession().delete(result);
//			return true;
//		}
//		return false;
//	}

