package controller.test.hotel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.hotel._01HotelBean;
import model.hotel.dao.HotelDAOHibernate;
@RestController //可替代Controller(寫在類別上對全部方法作用)
//@Controller
	public class HotelTest{
	 @Autowired
	 private HotelDAOHibernate dao ;
	 
//	 @ResponseBody(每一個@RequestMapping上面都要寫)
	 @RequestMapping("/HotelfindByPK")
	 public _01HotelBean method() {
	  _01HotelBean pk = dao.findByPrimaryKey(1);  
	  return pk;
	 } 
	 
	 @RequestMapping("/HoteltestfindALL")
	 public List<_01HotelBean> findALL() {
		 List<_01HotelBean> select = dao.findAll();		  
		 return select;
	 } 

	 @RequestMapping("/Hoteltestcreate")
	 public _01HotelBean create() {
		 _01HotelBean insert = new _01HotelBean();
		 insert.setHotelNo(2);
		 insert.setHotelName("香港迪士尼樂園酒店");
		 insert.setAddress("香港離島大嶼山迪士尼樂園度假區");
		 insert.setPhone("00852-35106000");
		 insert.setEmail("NULL");
		 insert.setTotalroom(400);
		 _01HotelBean bean = dao.create(insert); 
		 return insert;
	 }
	  
	 @RequestMapping("/Hoteltestupdate")
	 public _01HotelBean update() {
		 _01HotelBean update = dao.update(2, "香港迪士尼樂園酒店", "香港離島大嶼山迪士尼樂園度假區", "00852-35106000", "NULL", 
				 200);		  
		 return update;
	 }
	 
	 @RequestMapping("/Hoteltestremove")
	 public boolean remove() {
		 boolean remove = dao.remove(2);		  
		 return false; 
	 } 

}
	