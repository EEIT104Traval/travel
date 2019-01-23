package controller.test.hotel;

import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.hotel.HotelBean;
import model.hotel.HotelService;
import model.hotel.dao.HotelDAOHibernate;

@RestController // 可替代Controller(寫在類別上對全部方法作用)
//@Controller
public class HotelTest {
	@Autowired
	private HotelDAOHibernate dao;
	@Autowired
	private HotelService ser;
//	 @ResponseBody(每一個@RequestMapping上面都要寫)
	@RequestMapping("/HotelfindByPK")
	public HotelBean method() {
		HotelBean pk = dao.findByPrimaryKey(4);
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
		insert.setHotelNameCH("香港迪士尼樂園酒店");
		insert.setHotelNameEN("Hong Kong DisneyLand");
		insert.setCountryCH("中國");
		insert.setCountryEN("China");
		insert.setCityCH("香港");
		insert.setCityEN("Hong Kong");
		insert.setAddress("香港離島大嶼山迪士尼樂園度假區");
		insert.setHotelTotalRooms(800);
		insert.setStar(5);
		insert.setStarRate("starRate");
		insert.setPrice("NT$1,234");
		insert.setPic("NULL");
		HotelBean bean = dao.create(insert);
		return insert;
	}

	@RequestMapping("/Hoteltestupdate")
	public HotelBean update() {
		HotelBean update = dao.update(2, "香港迪士尼樂園酒店", "Hong Kong DisneyLand", "中國", "China", "香港", "Hing Kong", "香港離島大嶼山迪士尼樂園度假區", 1200, 5, "starRate", "NT $2,266",
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
	
	@RequestMapping("/Hotelbuy")
	public boolean qupdate()throws ParseException {
		String str="2019-02-03";
		java.sql.Date x= java.sql.Date.valueOf(str);
		String str1="2019-02-07";
		java.sql.Date y= java.sql.Date.valueOf(str1);
		System.out.println("----------------------------------------");
		System.out.println("x="+x);
		System.out.println("y="+y);
		 
		ser.qupdate("snoopy", 4, "XX", "987654123", 8, x, y);
			return false;
	}
}
