package controller.test.flight;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
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

		bean.setUsername("micky");
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
		FlightOrderInfoBean bean = dao.update(5, "micky", "AAAJFR", 84657547, "nklhj@co.com", 7, 2,
				new java.util.Date(), "成功l");

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
	public AirportCompareBean Airportfind() {
		AirportCompareBean bean = adao.findByPrimaryKey("SRI");
		return bean;
	}

	@ResponseBody // @RestController可替代
	@RequestMapping("/flight13")
	public void AirlinecreateParserXml() {
//		/Travel/src/main/resources/flightRes/CITY_CHT.xml
		File inputXml = new File("flight/CITY_CHT.xml");
		SAXReader saxReader = new SAXReader();
		try {
			Document document = saxReader.read(inputXml);
			Element employees = document.getRootElement();
			for (Iterator i = employees.elementIterator(); i.hasNext();) {
				Element employee = (Element) i.next();
				AirportCompareBean bean = new AirportCompareBean();
				int count = 0;
				for (Iterator j = employee.elementIterator(); j.hasNext();) {
					Element node = (Element) j.next();
//                    System.out.println(node.getName() + ":" + node.getText());

					if (node.getName() == "C") {
						count++;
						System.out.println("count=" + count);
//						System.out.println(node.getName());
//						System.out.println(node.getText());

						bean.setAirportCode(node.getText());
					} else {
						count++;
						bean.setAirportName(node.getText());
					}
					if (count % 2 == 0) {
						AirportCompareBean bean1 = adao.create(bean);
						System.out.println("新增成功=" + bean1);
					}

				}
			}
		} catch (DocumentException e) {
			System.out.println(e.getMessage());
		}
		System.out.println("dom4j parserXml");
	}

	@ResponseBody // @RestController可替代
	@RequestMapping("/flight14")
	public AirlineCompareBean Airlinefind() {
		AirlineCompareBean bean = adao2.findByPrimaryKey("");
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
	public AirlineCompareBean Airlinecreate() throws IOException {
		File inputXml = new File("C:/Users/wei/Desktop/Airline_CHT.xml");
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
						System.out.println("count=" + count);
//						System.out.println(node.getName());
//						System.out.println(node.getText());
						s = node.getText();
						bean.setAirlineCode(node.getText());
					} else {
						count++;
						s2 = node.getText();
						bean.setAirlineCompany(s2);

					}
					if (count % 2 == 0) {
//						try {
//							FileInputStream file = new FileInputStream(
//									new File("C:/Users/wei/Desktop/airlines_logo 56_50/" + s + ".gif"));
//							bean.setAirlineLogo(Hibernate.getLobCreator(this.getSession()).createBlob(file, 1024));
//
//						} catch (FileNotFoundException e) {
//							System.out.println("找不到路徑");
//						} finally {

							AirlineCompareBean bean1 = adao2.create(bean);
							System.out.println("新增成功=" + bean1);

//						}
					}

				}
			}
		} catch (DocumentException e) {
			System.out.println(e.getMessage());
		}
		System.out.println("dom4j parserXml");
		AirlineCompareBean bean = new AirlineCompareBean();

		AirlineCompareBean bean1 = adao2.create(bean);
		return bean1;
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