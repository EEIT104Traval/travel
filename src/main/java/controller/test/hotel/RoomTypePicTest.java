
package controller.test.hotel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.hotel.RoomTypePicBean;
import model.hotel.dao.RoomTypePicDAOHibernate;

@RestController //可替代Controller(寫在類別上對全部方法作用)
//@Controller
	public class RoomTypePicTest{
	 @Autowired
	 private RoomTypePicDAOHibernate dao ;
	 
//	 @ResponseBody(每一個@RequestMapping上面都要寫)
	 @RequestMapping("/RoomTypePicfindByPK")
	 public RoomTypePicBean method() {
		 RoomTypePicBean pk = dao.findByPrimaryKey(1);  
	  return pk;
	 } 
	 
	 @RequestMapping("/RoomTypePicfindALL")
	 public List<RoomTypePicBean> findALL() {
		 List<RoomTypePicBean> select = dao.findAll();		  
		 return select;
	 } 

	 @RequestMapping("/RoomTypePiccreate")
	 public RoomTypePicBean create() {
		 RoomTypePicBean insert = new RoomTypePicBean();
		 insert.setPicNo(2);
		 insert.setRoomTypeNo(2);
		 insert.setPic("路徑");
		 RoomTypePicBean bean = dao.create(insert); 
		 return insert;
	 }
	  
	 @RequestMapping("/RoomTypePicupdate")
	 public RoomTypePicBean update() {
		 RoomTypePicBean update = dao.update(2, 2, "route");		  
		 return update;
	 }
	 
	 @RequestMapping("/RoomTypePicremove")
	 public boolean remove() {
		 boolean remove = dao.remove(2);		  
		 return false; 
	 } 

}
	