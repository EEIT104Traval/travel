package controller.test.flight;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.flight.FlightOrderInfoBean;
import model.flight.dao.FlightDAOHibernate;

@Controller
public class FlightTest {

	@Autowired
	private FlightDAOHibernate dao;

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
		FlightOrderInfoBean bean = dao.findByPrimaryKey(3);
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
		bean.setPeopleCount(5);
		bean.setBookingCode("SDIJFR");
		bean.setPhone(8454);

		FlightOrderInfoBean bean1 = dao.create(bean);

		return bean1;
	}

	@ResponseBody // @RestController可替代
	@RequestMapping("/flight4")
	public FlightOrderInfoBean update() {
		FlightOrderInfoBean bean = dao.update(3, "micky", "SDIJFR", 84657547, "nklhj@co.com", 7, new java.util.Date(),
				"成功l");

		return bean;
	}

	@ResponseBody // @RestController可替代
	@RequestMapping("/flight5")
	public Boolean remove() {

		Boolean b = dao.remove(3);
		return b;

	}

}