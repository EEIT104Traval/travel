
package controller.test.hotel;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import model.hotel.RoomAvailableBean;
import model.hotel.dao.RoomAvailableDAOHibernate;

@RestController //可替代Controller(寫在類別上對全部方法作用)
//@Controller
	public class RoomAvailableTest{
	 @Autowired
	 private RoomAvailableDAOHibernate dao ;
	 
//	 @ResponseBody(每一個@RequestMapping上面都要寫)
	 @RequestMapping("/RoomAvailablefindByPK")
	 public RoomAvailableBean method() {
		 RoomAvailableBean pk = dao.findByPrimaryKey(1);  
	  return pk;
	 } 
	 
	 @RequestMapping("/RoomAvailablefindALL")
	 public List<RoomAvailableBean> findALL() {
		 List<RoomAvailableBean> select = dao.findAll();		  
		 return select;
	 } 

	 @RequestMapping("/RoomAvailablecreate")
	 public RoomAvailableBean create() {
		 RoomAvailableBean insert = new RoomAvailableBean();
		 insert.setSerialNo(2);
		 insert.setRoomTypeNo(1);
		 java.util.Date date = Date.valueOf("2019-01-01");
		 insert.setDate(date);
		 insert.setTotalRooms(300);
		 insert.setSale(100);
		 insert.setAvailable(200);
		 insert.setNotForSale(0);
		 RoomAvailableBean bean = dao.create(insert); 
		 return insert;
	 }
	  
	 @RequestMapping("/RoomAvailableupdate")
	 public RoomAvailableBean update() {
		 RoomAvailableBean update = dao.update(2, 1, Date.valueOf("2019-01-02"), 300, 100, 200, 0);		  
		 return update;
	 }
	 
	 @RequestMapping("/RoomAvailableremove")
	 public boolean remove() {
		 boolean remove = dao.remove(2);		  
		 return false; 
	 } 

}
	