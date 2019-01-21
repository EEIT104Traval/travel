
package controller.test.hotel;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.hotel.RoomTypeBean;
import model.hotel.RoomTypeService;
import model.hotel.dao.RoomTypeDAOHibernate;

@RestController //可替代Controller(寫在類別上對全部方法作用)
//@Controller
	public class RoomTypeTest{
	 @Autowired
	 private RoomTypeDAOHibernate dao ;
	 @Autowired
	 private RoomTypeService rd ;
	 
//	 @ResponseBody(每一個@RequestMapping上面都要寫)
	 @RequestMapping("/RoomTypefindByPK")
	 public RoomTypeBean method() {
		 RoomTypeBean pk = dao.findByPrimaryKey(8);  
	  return pk;
	 } 
	 
	 @RequestMapping("/RoomTypefindALL")
	 public List<RoomTypeBean> findALL() {
		 List<RoomTypeBean> select = dao.findAll();		  
		 return select;
	 } 

	 @RequestMapping("/RoomTypecreate")
	 public RoomTypeBean create() {
		 RoomTypeBean insert = new RoomTypeBean();
		 insert.setRoomTypeNo(3);
		 insert.setHotelNo(1);
		 insert.setRoomType("雙人房");
		 insert.setAccommodate(2);
		 insert.setTotalRooms(100);
		 insert.setPrice("2,500");
		 insert.setDescription("NULL");
		 insert.setContent("NULL");
		 insert.setPic("NULL");;
		 RoomTypeBean bean = dao.create(insert); 
		 return insert;
	 }
	  
	 @RequestMapping("/RoomTypeupdate")
	 public RoomTypeBean update() {
		 RoomTypeBean update = dao.update(3, 1, "雙人房", 2, 100, "2,600", "NULL", "NULL", "NULL");		  
		 return update;
	 }
	 
	 @RequestMapping("/RoomTyperemove")
	 public boolean remove() {
		 boolean remove = dao.remove(3);		  
		 return false; 
	 } 

	 @RequestMapping("/Room")
	 public Map<String,List<?>> room() {
		 Map<String,List<?>> result = rd.findRoomType(8);
		return result;
		 
	 } 
}
	