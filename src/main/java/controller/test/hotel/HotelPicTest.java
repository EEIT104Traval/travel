package controller.test.hotel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.hotel._02HotelPicBean;
import model.hotel.dao.HotelDAOHibernate;
import model.hotel.dao.HotelPicDAOHibernate;
@RestController //可替代Controller(寫在類別上對全部方法作用)
//@Controller
	public class HotelPicTest{
	 @Autowired
	 private HotelPicDAOHibernate dao ;
	 
//	 @ResponseBody(每一個@RequestMapping上面都要寫)
	 @RequestMapping("/HotelPicfindByPK")
	 public _02HotelPicBean method() {
	  _02HotelPicBean pk = dao.findByPrimaryKey(1);  
	  return pk;
	 } 
	 
//	 @RequestMapping("/HotelPicfindALL")
//	 public List<_02HotelPicBean> findALL() {
//		 List<_02HotelPicBean> select = dao.findAll();		  
//		 return select;
//	 } 
//
//	 @RequestMapping("/HotelPiccreate")
//	 public _02HotelPicBean create() {
//		 _02HotelPicBean insert = new _02HotelPicBean();
//		 insert.setHotelNo(2);
//		 insert.setHotelName("香港迪士尼樂園酒店");
//		 insert.setAddress("香港離島大嶼山迪士尼樂園度假區");
//		 insert.setPhone("00852-35106000");
//		 insert.setEmail("NULL");
//		 insert.setTotalroom(400);
//		 _02HotelPicBean bean = dao.create(insert); 
//		 return insert;
//	 }
//	  
//	 @RequestMapping("/HotelPicupdate")
//	 public _02HotelPicBean update() {
//		 _02HotelPicBean update = dao.update(2, "香港迪士尼樂園酒店", "香港離島大嶼山迪士尼樂園度假區", "00852-35106000", "NULL", 
//				 200);		  
//		 return update;
//	 }
//	 
//	 @RequestMapping("/Hoteltestremove")
//	 public boolean remove() {
//		 boolean remove = dao.remove(2);		  
//		 return false; 
//	 } 

}
	