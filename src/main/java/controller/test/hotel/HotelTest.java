package controller.test.hotel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.hotel.HotelBean;
import model.hotel.dao.HotelDAOHibernate;
import model.ticket.TicketInfoBean;

@RestController // 可替代Controller(寫在類別上對全部方法作用)
//@Controller
public class HotelTest {
	@Autowired
	private HotelDAOHibernate dao;

//	 @ResponseBody(每一個@RequestMapping上面都要寫)
	@RequestMapping("/HotelfindByPK")
	public HotelBean method() {
		HotelBean pk = dao.findByPrimaryKey(1);
		return pk;
	}

	@RequestMapping("/HoteltestfindALL")
	public List<HotelBean> findALL() {
		List<HotelBean> select = dao.findAll();
		return select;
	}

	@RequestMapping("/Hoteltestcreate")
	public HotelBean create() {
		HotelBean insert = new HotelBean();
		insert.setHotelNo(2);
		insert.setHotelName("香港迪士尼樂園酒店");
		insert.setCountry("中國");
		insert.setCity("香港");
		insert.setAddress("香港離島大嶼山迪士尼樂園度假區");
		insert.setHotelTotalRooms(800);
		insert.setStarRate("starRate");
		insert.setPrice("NT$1,234");
		insert.setPic("NULL");
		HotelBean bean = dao.create(insert);
		return insert;
	}

	@RequestMapping("/Hoteltestupdate")
	public HotelBean update() {
		HotelBean update = dao.update(2, "香港迪士尼樂園酒店", "中國", "香港", "香港離島大嶼山迪士尼樂園度假區", 1200, "starRate", "NT $2,266",
				"NULL");
		return update;
	}

	@RequestMapping("/Hoteltestremove")
	public boolean remove() {
		boolean remove = dao.remove(2);
		return false;
	}

	@RequestMapping("/Hotelsearch")
	public List<HotelBean> searchByCountry() {
		List<HotelBean> all = dao.searchByCountry("法國");

		return all;
	}

}
