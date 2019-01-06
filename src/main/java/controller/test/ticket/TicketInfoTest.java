package controller.test.ticket;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.ticket.TicketInfoBean;
import model.ticket.TicketInfoDAO;

@RestController
public class TicketInfoTest{

	@Autowired
	private TicketInfoDAO dao;
	@Autowired
	ServletContext servletContext;
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

// @ResponseBody  //@RestController可替代
	@RequestMapping("/ticketfindAll")
	public List<TicketInfoBean> findALL() {
		List<TicketInfoBean> all = dao.findAll();
		return all;
	}

	@RequestMapping("/ticketfindpk")
	public TicketInfoBean method() {
		TicketInfoBean bean = dao.findByPrimaryKey(1);
		return bean;
	}

	@RequestMapping("/ticketCreate")
	public TicketInfoBean create() {
		TicketInfoBean result = new TicketInfoBean();
		result.setTicketName("環球大大阪");
		result.setValidity(2);
		result.setAdultTicketPrice(2000);
		result.setChildTicketPrice(1800);
		result.setAdultTicketSellQ(10);
		result.setChildTicketSellQ(10);
		result.setAdultTicketSelledQ(5);
		result.setChildTicketSelledQ(5);
		result.setCountry("japan");
		result.setCategory("test");
		result.setProductFeatures("test");
		result.setTicketPicture("test");
		result.setTicketDescription("test");
		result.setTraffic_information("test");
		result.setSpecial_restrictions("test");
		result.setGoogleAddressOrName("test");

		TicketInfoBean ck = dao.create(result);
		return ck;

	}

	@RequestMapping("/ticketUpdate")
	public TicketInfoBean update() {
		TicketInfoBean update = dao.update(1, "東京熱", 2, 3000, 2000, 10, 10, 2, 5, "japan", "test", "test", "test",
				"test", "test", "test", "test");
		return update;
	}

	@RequestMapping("/ticketRemove")
	public boolean remove() {
		boolean remove = dao.remove(1);
		return remove;
	}
	
	@RequestMapping("/ticketDLtest")
	public void DLticketform() throws IOException{
		String s1 = servletContext.getRealPath("");

		File ticketincsv = new File(s1 + "resource/Ticket/ticket.csv"); // 讀取的CSV文檔
		File ticketoutcsv = new File("C:\\Users\\Emma\\Desktop\\Ticketfrom1.csv");// 寫出的CSV文檔
		if(!ticketoutcsv.exists()) {
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
	}
}