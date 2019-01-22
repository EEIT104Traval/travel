package controller.hotel;

import java.text.ParseException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.hotel.HotelService;
import model.hotel.RoomTypeBean;
import model.hotel.RoomTypeService;

@Controller
public class RoomAvailableController {
	
	@Autowired
	private RoomTypeService roomTypeService;
	@Autowired
	private HotelService hotelService;
	
	@ResponseBody
	@RequestMapping("/voyage/date.controller")
	public Map searchRoomType(@RequestParam(value = "8", required = false) Integer roomTypeNo) {
		
		System.out.println("roomTypeNo=" + roomTypeNo);
		
		Map<String, List<?>> result = null;
//		result = roomAvailableService.findByPrimaryKey(user);
		System.out.println("--------------------------");
		result = roomTypeService.findRoomType(roomTypeNo);
		System.out.println(result);
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/voyage/hotel/roomTypes/all")
	public List<RoomTypeBean> findHotelRoomTypes(@RequestParam Integer hotelNo){
		return roomTypeService.findByHotelNo(hotelNo);
	}
	
	@ResponseBody
	@RequestMapping("/voyage/hotel/HotelOrder")
	public String HotelOrder(String accountName, Integer hotelNo, String bookingPerson, String phone, Integer roomTypeNo ,java.sql.Date checkIn,java.sql.Date checkOut ,Integer roomPrice) throws ParseException{
		
		hotelService.qupdate(accountName, hotelNo, bookingPerson, phone, roomTypeNo, checkIn, checkOut, roomPrice);
		
		return "訂購成功";
		}
	
}
