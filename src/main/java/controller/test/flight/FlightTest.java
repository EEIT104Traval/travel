package controller.test.flight;

import java.io.File;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.hibernate.internal.util.xml.Origin;
import org.hibernate.internal.util.xml.XmlDocument;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.flight.AirlineCompareBean;
import model.flight.AirlineCompareDAO;
import model.flight.AirportCompareBean;
import model.flight.AirportCompareDAO;
import model.flight.FlightOrderInfoBean;
import model.flight.FlightOrderInfoDAO;
import model.flight.FlightPassengerInfoBean;
import model.flight.FlightPassengerInfoDAO;
import model.flight.FlightTicketBean;
import model.flight.FlightTicketDAO;
//@Transactional
@Controller
public class FlightTest implements XmlDocument {

	@Autowired
	private FlightOrderInfoDAO dao;
	@Autowired
	private FlightPassengerInfoDAO pdao;
	@Autowired
	private FlightTicketDAO tdao;
	@Autowired
	private AirportCompareDAO adao;
	@Autowired
	private AirlineCompareDAO adao2;
	@Autowired
	ServletContext servletContext;

	@ResponseBody // @RestController可替代
	@RequestMapping("/flight1")
	public List<FlightOrderInfoBean> findAll() {
		System.out.println("test controller");
		List<FlightOrderInfoBean> list = dao.findAll();
		return list;
	}

	@ResponseBody // @RestController可替代
	@RequestMapping("/flight2")
	public FlightOrderInfoBean findByPrimaryKey() {
		FlightOrderInfoBean bean = dao.findByPrimaryKey(2);
		return bean;
	}

	@ResponseBody // @RestController可替代
	@RequestMapping("/flight3")
	public FlightOrderInfoBean create() {
		FlightOrderInfoBean bean = new FlightOrderInfoBean();
		bean.setFlightOrderNO(null);
		bean.setAccountName("micky");
		bean.setContactGender("先生");
		bean.setContactLastNameCN("李");
		bean.setContactFirstNameCN("米奇");
		bean.setDealDate(new java.util.Date());
		bean.setOrderStatus("成功");
		bean.setEmail("isj@co.com");
		bean.setChildCount(3);
		bean.setAdultCount(2);
		bean.setBookingCode("SDIJFR");
		bean.setPhone(8454);

		FlightOrderInfoBean bean1 = dao.create(bean);

		return bean1;
	}

	@ResponseBody // @RestController可替代
	@RequestMapping("/flight4")
	public FlightOrderInfoBean update() {
		
		FlightOrderInfoBean bean = new FlightOrderInfoBean();
		bean.setFlightOrderNO(5);
		bean.setAccountName("micky");
		bean.setContactGender("先生");
		bean.setContactLastNameCN("宋");
		bean.setContactFirstNameCN("米奇");
		bean.setDealDate(new java.util.Date());
		bean.setOrderStatus("成功");
		bean.setEmail("isj@co.com");
		bean.setChildCount(3);
		bean.setAdultCount(2);
		bean.setBookingCode("SDIJFR");
		bean.setPhone(8454);
		
		
		FlightOrderInfoBean bean1 = dao.update(bean);
		System.out.println(bean1);

		return bean;
	}

	@ResponseBody // @RestController可替代
	@RequestMapping("/flight5")
	public Boolean remove() {

		Boolean b = dao.remove(3);
		return b;

	}

	@ResponseBody // @RestController可替代
	@RequestMapping("/flight6")
	public FlightPassengerInfoBean Passengerfind() {
		FlightPassengerInfoBean bean = pdao.findByPrimaryKey(4545);
		return bean;
	}

	@ResponseBody // @RestController可替代
	@RequestMapping("/flight7")
	public List<FlightPassengerInfoBean> findAll2() {

		List<FlightPassengerInfoBean> list = pdao.findAll();
		return list;
	}

	@ResponseBody // @RestController可替代
	@RequestMapping("/flight8")
	public FlightPassengerInfoBean create2() {
		FlightPassengerInfoBean bean = new FlightPassengerInfoBean();
		bean.setFlightTicketNO(5);
		bean.setBirth(new java.util.Date());
		bean.setAdultOrChild("Adult");
		bean.setFirstName("lida");
		bean.setLastName("Wang");
		bean.setPrice(45545);
		bean.setTitle("Mr.");

		FlightPassengerInfoBean bean1 = pdao.create(bean);

		return bean1;
	}

	@ResponseBody // @RestController可替代
	@RequestMapping("/flight9")
	public FlightTicketBean Ticketfind() {
		FlightTicketBean bean = tdao.findByPrimaryKey(1);
		return bean;
	}

	@ResponseBody // @RestController可替代
	@RequestMapping("/flight10")
	public List<FlightTicketBean> ticketfindAll() {

		List<FlightTicketBean> list = tdao.findAll();
		return list;
	}

	@ResponseBody // @RestController可替代
	@RequestMapping("/flight11")
	public FlightTicketBean Ticketcreate() {
		FlightTicketBean bean = new FlightTicketBean();
		bean.setFlightOrderNo(5);
		bean.setFlightNO("CA1923");
		bean.setAirlineCode("CA");
		bean.setTakeOffPlace("TPA");
		bean.setLandingPlace("JQP");
		bean.setChildPrice(8900);
		bean.setLandingTime(new java.util.Date());
		bean.setGoOrBack("go");
		bean.setClassLevel("經濟艙");

		FlightTicketBean bean1 = tdao.create(bean);

		return bean1;
	}

	@ResponseBody // @RestController可替代
	@RequestMapping("/flight12")
	public AirportCompareBean Airportfind(HttpServletResponse request) {
		AirportCompareBean bean = adao.findByPrimaryKey("SRI");
		return bean;
	}

	@ResponseBody // @RestController可替代
	@RequestMapping("/flight13")
	public void AirlinecreateParserXml() {
		String s1 = servletContext.getRealPath("");

		File inputXml = new File(s1 + "resource/flight/CITY_CHT.xml");
		SAXReader saxReader = new SAXReader();
		try {
			Document document = saxReader.read(inputXml);
			Element employees = document.getRootElement();
			int input = 0;
			for (Iterator i = employees.elementIterator(); i.hasNext();) {
				Element employee = (Element) i.next();
				AirportCompareBean bean = new AirportCompareBean();
				int count = 0;
				for (Iterator j = employee.elementIterator(); j.hasNext();) {
					Element node = (Element) j.next();
//                    System.out.println(node.getName() + ":" + node.getText());

					if (node.getName() == "C") {
						count++;
//						System.out.println("count=" + count);
//						System.out.println(node.getName());
//						System.out.println(node.getText());

						bean.setAirportCode(node.getText());
					} else {
						input++;
						count++;
						bean.setAirportName(node.getText());
						System.out.print("{ ID:"+input +", Name: '"+ node.getText()+"'},");
					}
					if (count % 2 == 0) {
						AirportCompareBean bean1 = adao.create(bean);
//						System.out.println("新增成功=" + bean1);
					}

				}
			}
		} catch (DocumentException e) {
			System.out.println(e.getMessage());
		}
//		System.out.println("dom4j parserXml");
	}

	@ResponseBody // @RestController可替代
	@RequestMapping("/flight14")
	public AirlineCompareBean Airlinefind() {
		AirlineCompareBean bean = adao2.findByPrimaryKey("0B");
		System.out.println("測試結果為"+bean.getAirlineCompany());
		return bean;
	}

//	@Autowired
//	private SessionFactory sessionFactory;
//
//	public Session getSession() {
//		return this.sessionFactory.getCurrentSession();
//	}

	@ResponseBody // @RestController可替代
	@RequestMapping("/flight15")
	public void Airlinecreate() throws IOException {
		String s1 = servletContext.getRealPath("");
		System.out.println(s1);
		File inputXml = new File(s1 + "resource/flight/Airline_CHT.xml");
		SAXReader saxReader = new SAXReader();
		try {
			Document document = saxReader.read(inputXml);
			Element employees = document.getRootElement();
			for (Iterator i = employees.elementIterator(); i.hasNext();) {
				Element employee = (Element) i.next();
				AirlineCompareBean bean = new AirlineCompareBean();
				int count = 0;
				String s = "";
				String s2 = "";
				for (Iterator j = employee.elementIterator(); j.hasNext();) {
					Element node = (Element) j.next();
//                    System.out.println(node.getName() + ":" + node.getText());

					if (node.getName() == "C") {
						count++;
						System.out.println("count=" + count+", type="+node.getName()+"， text="+node.getText());
//						System.out.println();
//						System.out.println(); 
						
						s = node.getText();
						bean.setAirlineCode(node.getText());
//						/Travel/src/main/webapp/   resource/flight/airlines_logo 56_50/0B.gif
						String path = s1 + "resource/flight/airlines_logo 56_50/" + s + ".gif";
						File file = new File(path);
						if (file.exists()) {// 判断文件的存在性      
							bean.setAirlineLogo(path);
							System.out.println("have！");
						} else {
//							file.createNewFile();
							System.out.println("no");
						}
//						bean.setAirlineLogo(s);
					} else {
						count++;
						s2 = node.getText();
						bean.setAirlineCompany(s2);

					}
					if (count % 2 == 0) {

						AirlineCompareBean bean1 = adao2.create(bean);
						System.out.println("新增成功=" + bean1);
					}

				}
			}
		} catch (DocumentException e) {
			System.out.println(e.getMessage());
		}
		System.out.println("dom4j parserXml");
	
	}
	

	@ResponseBody 
	@RequestMapping("/flightxml")
	public void XML() {
		//把XML文件放在WEBAPP/resource下面自己建文件夾
		//外面要@Autowired一個ServletContext servletContext 
		//外面要@Autowired一個和 你的dao		
		//下面一行字串里的路徑自己換對應的
		String s = XmlParser.method("resource/flight/CITY_CHT.xml", servletContext);
		String[] test = s.split("=。=");
		//下面一行數值換成你自己的表格欄位數量
		int columnCount = 2;
		for(int i=0;i<test.length-1;i=i+columnCount) {
			
			for(int j=0;j<columnCount;j++) {
				//下面一行刪掉我的要new自己對應的bean
				AirportCompareBean bean = new AirportCompareBean();
				//下面按順序調用你的set方法欄位多就是test[i+1]、test[i+2]、test[i+3]...
				bean.setAirportCode(test[i]);
				bean.setAirportName(test[i+1]);
				//下面一行用你的dao變數點你的新增方法
				adao.create(bean);				
			}
		}
	}

	@ResponseBody // @RestController可替代
	@RequestMapping("/flightsearchCompany")
	public List<AirlineCompareBean> Airlinecompfind() {
		
		Set<String> code = new HashSet<>();
		code.add("0B");
		code.add("CA");
		code.add("BR");
		List<AirlineCompareBean> beans = adao2.findByList(code);
		System.out.println("測試結果為"+beans);
		return beans;
	}

	
	
	
	
	@Override
	public Document getDocumentTree() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Origin getOrigin() {
		// TODO Auto-generated method stub
		return null;
	}

}