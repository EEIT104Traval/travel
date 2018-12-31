package controller.test.flight;

import java.util.List;

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
public class FlightTest {

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
		FlightOrderInfoBean bean = dao.update(5, "micky", "AAAJFR", 84657547, "nklhj@co.com", 7,2, new java.util.Date(),
				"成功l");

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
		AirportCompareBean bean = adao.findByPrimaryKey("");
		return bean;
	} 
	
	@ResponseBody // @RestController可替代
	@RequestMapping("/flight13")
	public AirportCompareBean Airportcreate() {
		AirportCompareBean bean = new AirportCompareBean();
		

		AirportCompareBean bean1 = adao.create(bean);

		return bean1;
	}
	
	@ResponseBody // @RestController可替代
	@RequestMapping("/flight14")
	public AirlineCompareBean Airlinefind() {
		AirlineCompareBean bean = adao2.findByPrimaryKey("");
		return bean;
	} 
	
	@ResponseBody // @RestController可替代
	@RequestMapping("/flight15")
	public AirlineCompareBean Airlinecreate() {
		AirlineCompareBean bean = new AirlineCompareBean();

		AirlineCompareBean bean1 = adao2.create(bean);
		return bean1;
	}
	
	
	
}