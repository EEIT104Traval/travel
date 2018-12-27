package model.ticket;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.hibernate.HibernateUtil;


@Repository
public class TicketInfoDAOHibernate implements TicketInfoDAO {
	@Autowired
	private SessionFactory sessionFactory;	
		
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public static void main(String[] args) {
		SessionFactory sessionFactory = HibernateUtil.getSessionfactory();
		try {			
			Session session = sessionFactory.getCurrentSession();
			Transaction trx = session.beginTransaction();
			TicketInfoDAO ticketInfoDAO = new TicketInfoDAOHibernate();
			//select
			
			System.out.println(TicketInfoBean.class);
			TicketInfoDAO select = (TicketInfoDAO) ticketInfoDAO.findByPrimaryKey(1);
			System.out.println("select="+select);
			
			//insert			
			TicketInfoBean insert = new TicketInfoBean();
			insert.setTicketNo(0001);
			insert.setTicketName("迪士尼");
			insert.setValidity(null);
			insert.setAdultTicketPrice(3000);
			insert.setChildTicketPrice(2000);
			insert.setAdultTicketSellQ(5);
			insert.setChildTicketSellQ(1);
			insert.setAdultTicketSelledQ(5);
			insert.setChildTicketSelledQ(1);
			insert.setCountry("JAPAN");
			insert.setCategory("門票");
			insert.setProductFeatures("test");
			insert.setTicketPicture(null);
			insert.setTicketDescription(null);
			insert.setTraffic_information(null);
			insert.setSpecial_restrictions(null);
			insert.setGoogleAddressOrName(null);
			
			ticketInfoDAO.create(insert);			
			System.out.println("insert="+insert);
			
			//update
//			TicketInfoBean update = ticketInfoDAO.update("RMin87", 87.87,new java.util.Date(0) , 8700, 1000);
//			System.out.println("update="+update);
			
			//delete
//			boolean delete = productDAO.remove(1000);	
//			System.out.println("delete="+delete);				
			
			trx.commit();
			session.close();
			
		
		} finally {
			HibernateUtil.closeSessionFactory();
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
////		Query query =  this.getSession().createQuery("from ProductBean");
////		return (List<ProductBean>)query.list();
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

	@Override
	public TicketInfoBean findByPrimaryKey(Integer ticketNo) {
		
		return null;
	}

	@Override
	public TicketInfoBean findByticketName(String ticketName) {
		
		return null;
	}

	@Override
	public TicketInfoBean findByticketDate(java.sql.Date validity) {
		
		return null;
	}

	@Override
	public TicketInfoBean findByticketCountry(String country) {
		
		return null;
	}

	@Override
	public TicketInfoBean create(TicketInfoBean bean) {
		
		return null;
	}

	@Override
	public TicketInfoBean update(Integer ticketNo, String ticketName, java.sql.Date validity, Integer adultTicketPrice,
			Integer childTicketPrice, Integer adultTicketSellQ, Integer childTicketSellQ, Integer adultTicketSelledQ,
			Integer childTicketSelledQ, String country, String category, String productFeatures, Byte[] ticketPicture,
			String ticketDescription, String traffic_information, String special_restrictions,
			String googleAddressOrName) {
		
		return null;
	}

	@Override
	public TicketInfoBean remove(Integer ticketNo) {
		
		return null;
	}

	@Override
	public List<TicketInfoBean> findAll() {
		
		return null;
	}
}
