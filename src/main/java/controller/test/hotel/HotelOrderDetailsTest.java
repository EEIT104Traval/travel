
package controller.test.hotel;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.hotel.HotelOrderDetailsBean;
import model.hotel.dao.HotelOrderDetailsDAOHibernate;

@RestController //可替代Controller(寫在類別上對全部方法作用)
//@Controller
	public class HotelOrderDetailsTest{
	 @Autowired
	 private HotelOrderDetailsDAOHibernate dao ;
	 
//	 @ResponseBody(每一個@RequestMapping上面都要寫)
	 @RequestMapping("/HotelOrderDetailsfindByPK")
	 public HotelOrderDetailsBean method() {
		 HotelOrderDetailsBean pk = dao.findByPrimaryKey(1);  
	  return pk;
	 } 
	 
	 @RequestMapping("/HotelOrderDetailsfindALL")
	 public List<HotelOrderDetailsBean> findALL() {
		 List<HotelOrderDetailsBean> select = dao.findAll();		  
		 return select;
	 } 

	 @RequestMapping("/HotelOrderDetailscreate")
	 public HotelOrderDetailsBean create() {
		 HotelOrderDetailsBean insert = new HotelOrderDetailsBean();
		 insert.setOrderNo(2);
		 insert.setHotelNo(2);
		 insert.setAccountName("Kelly");
		 java.util.Date createDate = Date.valueOf("2019-01-02");
		 insert.setCreateDate(createDate);
		 java.util.Date updateDate = Date.valueOf("2019-01-03");
		 insert.setUpdateDate(updateDate);
		 insert.setBookingPerson("Kelly");
		 insert.setHotelName("香港迪士尼樂園酒店");
		 insert.setPhone("0939191919");
		 java.util.Date bookingDate = Date.valueOf("2019-01-02");
		 insert.setBookingDate(bookingDate);
		 java.util.Date checkIn = Date.valueOf("2019-01-10");
		 insert.setCheckIn(checkIn);
		 java.util.Date checkOut = Date.valueOf("2019-01-12");
		 insert.setCheckOut(checkOut);
		 insert.setRoomType("雙人房");
		 insert.setRoomPrice(2500);
		 insert.setStayNights(2);
		 insert.setTotalPrice(5000);
		 insert.setInfo("NULL");
		 HotelOrderDetailsBean bean = dao.create(insert); 
		 return insert;
	 }
	  
	 @RequestMapping("/HotelOrderDetailsupdate")
	 public HotelOrderDetailsBean update() {
		 HotelOrderDetailsBean update = dao.update(2, 2, "KellyYANG", Date.valueOf("2019-01-02"),  Date.valueOf("2019-01-03"), "Kelly",
				 "香港迪士尼樂園酒店", "0939191919", Date.valueOf("2019-01-02"), Date.valueOf("2019-01-10"), Date.valueOf("2019-01-12"), 
				 "雙人房", 2500, 2, 5000, "NULL"
				 );		  
		 return update;
	 }
	 
	 @RequestMapping("/HotelOrderDetailsremove")
	 public boolean remove() {
		 boolean remove = dao.remove(2);		  
		 return false; 
	 } 

	 @RequestMapping("/findOrderaccountName")
	 public  List<HotelOrderDetailsBean> findOrderaccountName(String accountName) {
		 List<HotelOrderDetailsBean> result = dao.findOrderaccountName("snoopy");
		
		return result;
		
	 } 
	 
}
	