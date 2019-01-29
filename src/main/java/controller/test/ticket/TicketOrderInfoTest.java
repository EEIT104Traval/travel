package controller.test.ticket;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
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
	ServletContext servletContext;
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

		TicketOrderInfoBean update = dao.update(2, "kitty", 001, new java.util.Date(), new java.util.Date(), 1, 1,
				"test", "tw", "0911223344", 16500);

		return update;
	}

	@RequestMapping("/ticketOrderRemove")
	public boolean remove() {
		boolean b = dao.remove(1);
		return b;
	}

	@RequestMapping("tourDLtest")
	public void DLticketform() throws IOException {
		String s1 = servletContext.getRealPath("");
	
		File ticketincsv = new File(s1 + "resource/Tour/Tour.csv"); // 讀取的CSV文檔
		File ticketoutcsv = new File("C:\\Users\\User\\Desktop\\Tour1.csv");// 寫出的CSV文檔
		if (!ticketoutcsv.exists()) {
			ticketoutcsv.createNewFile();
		}

		InputStreamReader isr = new InputStreamReader(new FileInputStream(ticketincsv));// 待處理資料的檔案路徑
		BufferedReader reader = new BufferedReader(isr);
		PrintWriter pw = new PrintWriter(new FileWriter(ticketoutcsv));
		String line = null;
		while ((line = reader.readLine()) != null) {
//				String item[] = line.split(",");
//				bw.newLine();// 新起一行
//				bw.write(",");// 寫到新檔案中
			pw.println(line);
			System.out.println("寫出成功");
		}
		pw.close(); 
		reader.close();

	}
	@RequestMapping("/userinfoorder")
	public List<TicketOrderInfoBean> userinfoorder() {
		List<TicketOrderInfoBean> result = dao.finduser("micky");
		return result;
	}
	
	@RequestMapping("/foundNumber")
	public TicketOrderInfoBean foundNumber(String user, HttpServletResponse res) {
		res.setCharacterEncoding("UTF-8");
		TicketOrderInfoBean a = dao.fundNumber("micky");
		System.out.println(a);
		return a;
	}
//	@RequestMapping("/111222333")
//	public List<TicketOrderInfoBean> findaccountName (String accountName) {
//		List<TicketOrderInfoBean> a = dao.findaccountName("micky");
//		return a;
//	}
}
