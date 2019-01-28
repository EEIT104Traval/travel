package model.ticket.dao;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.servlet.ServletContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.ticket.TicketInfoBean;
import model.ticket.TicketInfoDAO;
import model.ticket.TicketOrderInfoBean;

@Repository
public class TicketInfoDAOHibernate implements TicketInfoDAO {

	@Autowired
	ServletContext servletContext;
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
	public List<TicketInfoBean> findAll() {

		return this.getSession().createQuery("from TicketInfoBean", TicketInfoBean.class).setMaxResults(50).list();
	}
	
	@Override
	public List<TicketInfoBean> findAllUp() {

		return this.getSession().createQuery("from TicketInfoBean where updown=0", TicketInfoBean.class).setMaxResults(50).list();
	}
	
	@Override
	public TicketInfoBean findUP(Integer ticketNo) {
		
		TicketInfoBean ticket =this.getSession().get(TicketInfoBean.class, ticketNo);
		if(ticket.getUpdown()==false) {
			return ticket;
		}
		return null;
	}

	@Override
	public TicketInfoBean create(TicketInfoBean bean) {

		this.getSession().save(bean);
		return bean;
	}

	@Override
	public TicketInfoBean update(TicketInfoBean bean) {
		TicketInfoBean result = this.getSession().get(TicketInfoBean.class, bean.getTicketNo());
		if (result != null) {
			result.setTicketNo(bean.getTicketNo());
			result.setTicketName(bean.getTicketName());
			result.setValidity(bean.getValidity());
			result.setAdultTicketPrice(bean.getAdultTicketPrice());
			result.setChildTicketPrice(bean.getChildTicketPrice());
			result.setAdultTicketSellQ(bean.getAdultTicketSellQ());
			result.setChildTicketSellQ(bean.getChildTicketSellQ());
			result.setAdultTicketSelledQ(bean.getAdultTicketSelledQ());
			result.setChildTicketSelledQ(bean.getChildTicketSelledQ());
			result.setCountry(bean.getCountry());
			result.setCategory(bean.getCategory());
			result.setProductFeatures(bean.getProductFeatures());
			result.setTicketPicture(bean.getTicketPicture());
			result.setTicketDescription(bean.getTicketDescription());
			result.setTraffic_information(bean.getTraffic_information());
			result.setSpecial_restrictions(bean.getSpecial_restrictions());
			result.setUpdown(bean.getUpdown());

			return result;
		}
		return null;
	}

	@Override
	public TicketInfoBean qupdate(TicketInfoBean bean) {
		TicketInfoBean result = this.getSession().get(TicketInfoBean.class, bean.getTicketNo());

		if (result != null) {
			result.setAdultTicketSellQ(bean.getAdultTicketSellQ());
			result.setAdultTicketSelledQ(bean.getAdultTicketSelledQ());
			return result;
		}
		return null;
	}

	@Override
	public boolean remove(Integer ticketNo) {
		TicketInfoBean result = this.getSession().get(TicketInfoBean.class, ticketNo);
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}

	@Override
	public List<TicketInfoBean> searchByCountry(String country) {
		CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
		CriteriaQuery<TicketInfoBean> criteria = criteriaBuilder.createQuery(TicketInfoBean.class);
		Root<TicketInfoBean> from = criteria.from(TicketInfoBean.class);
		criteria.select(from).where(from.get("country").in(country));
		List<TicketInfoBean> list = getSession().createQuery(criteria).getResultList();
		return list;
	}

	@Override
	public List<TicketInfoBean> searchByTicketName(Integer ticketNo) {
		CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
		CriteriaQuery<TicketInfoBean> criteria = criteriaBuilder.createQuery(TicketInfoBean.class);
		Root<TicketInfoBean> from = criteria.from(TicketInfoBean.class);
		criteria.select(from).where(from.get("ticketNo").in(ticketNo));
		List<TicketInfoBean> list = getSession().createQuery(criteria).getResultList();
		return list;
	}

//------------------------------------------------------------------------------------------------------------
	public List<TicketInfoBean> findByTicketOrderList(List<TicketOrderInfoBean> list) {
		EntityManager em = sessionFactory.createEntityManager();
		CriteriaBuilder criteriaBuilder = this.getSession().getCriteriaBuilder();
		CriteriaQuery<TicketInfoBean> criteriaQuery = criteriaBuilder.createQuery(TicketInfoBean.class);
		Root<TicketInfoBean> root = criteriaQuery.from(TicketInfoBean.class);
		CriteriaQuery<TicketInfoBean> query = criteriaQuery.select(root);
		List<Predicate> predicate = new ArrayList<>();
		for (TicketOrderInfoBean TicketOrder : list) {
			predicate.add(criteriaBuilder.equal(root.get("ticketNo"), TicketOrder.getTicketNo()));
		}
		Predicate[] p = new Predicate[predicate.size()];
		query.where(criteriaBuilder.or(predicate.toArray(p)));
		return em.createQuery(query).getResultList();
	}

	@Override
	public String DLticketInfo(String path) throws IOException {

		String s1 = servletContext.getRealPath("");

		File ticketincsv = new File(s1 + "resource/Ticket/ticket.csv"); // 讀取的CSV文檔
		File ticketoutcsv = new File(path);// 寫出的CSV文檔
		if (!ticketoutcsv.exists()) {
			ticketoutcsv.createNewFile();
		}

		InputStreamReader isr = new InputStreamReader(new FileInputStream(ticketincsv));// 待處理資料的檔案路徑
		BufferedReader reader = new BufferedReader(isr);
		PrintWriter pw = new PrintWriter(new FileWriter(ticketoutcsv));
		String line = null;
		while ((line = reader.readLine()) != null) {
//			String item[] = line.split(",");
//			bw.newLine();// 新起一行
//			bw.write(",");// 寫到新檔案中
			pw.println(line);
			System.out.println("寫出成功");
		}
		pw.close();
		reader.close();
		return "下載成功";
	}

	@Override
	public String UPticketInfo(String path) throws IOException {

		File f = new File(path);
		BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(f), "UTF-8"));

		br.readLine();

		String xx = null;
		while ((xx = br.readLine()) != null) {
			TicketInfoBean bean = new TicketInfoBean();
			String[] x = xx.split((","));

			bean.setTicketName(x[1]);
			bean.setValidity(Integer.parseInt(x[2]));
			bean.setAdultTicketPrice(Integer.parseInt(x[3]));
			bean.setChildTicketPrice(Integer.parseInt(x[4]));
			bean.setAdultTicketSellQ(Integer.parseInt(x[5]));
			bean.setChildTicketSellQ(Integer.parseInt(x[6]));
			bean.setAdultTicketSelledQ(Integer.parseInt(x[7]));
			bean.setAdultTicketSelledQ(Integer.parseInt(x[8]));
			bean.setCountry(x[9]);
			bean.setCategory(x[10]);
			bean.setProductFeatures(x[11]);
			bean.setTicketPicture(x[12]);
			bean.setTicketDescription(x[13]);
			bean.setTraffic_information(x[14]);
			bean.setSpecial_restrictions(x[15]);

			TicketInfoBean bean2 = create(bean);
			System.out.println("bean2" + bean2);
		}
		br.close();
		return "上傳成功";
	}

}