package controller.test.ticket;
import java.sql.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.ticket.TicketOrderInfoBean;
import model.ticket.TicketOrderInfoDAO;

@RestController
public class TicketOrderInfoTest {

		@Autowired
		private TicketOrderInfoDAO dao;
		@Autowired
		private SessionFactory sessionFactory;

		public Session getSession() {
			return this.sessionFactory.getCurrentSession();
		}

		// @ResponseBody //@RestController可替代
		@RequestMapping("/ticketOrderfindAll")
		public List<TicketOrderInfoBean> findALL() {
			List<TicketOrderInfoBean> all = dao.findAll();
			return all;
		}

		@RequestMapping("/ticketOrderfindpk")
		public TicketOrderInfoBean method() {
			TicketOrderInfoBean bean = dao.findByPrimaryKey(1);
			return bean;
		}

		@RequestMapping("/ticketOrderCreate")
		public TicketOrderInfoBean create() {
			TicketOrderInfoBean result = new TicketOrderInfoBean();

			result.setAccountName("kitty");
			result.setTicketNo(1);
			Date date = Date.valueOf("2015-05-02");
			result.setOrderDate(date);
			result.setUseDate(new java.util.Date());
			result.setAdultTicketCount(3);
			result.setChildTicketCount(3);
			result.setRecevingContact("test");
			result.setRecevingAddress("TAIPEI");
			result.setRecevingPhone("0911223344");
			result.setTotalPrice(16500);
					
			TicketOrderInfoBean ck = dao.create(result);
			return ck;

		}

		@RequestMapping("/ticketOrderUpdate")
		public TicketOrderInfoBean update() {

			TicketOrderInfoBean update = dao.update(2, "kitty", 001, new java.util.Date(), new java.util.Date(), 1, 1, "test", "tw", "0911223344", 16500);
			
			return update;
		}

		@RequestMapping("/ticketOrderRemove")
		public boolean remove() {
			boolean b = dao.remove(1);
			return b;
		}
	}

