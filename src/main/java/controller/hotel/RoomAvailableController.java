package controller.hotel;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.hotel.HotelOrderDetailsBean;
import model.hotel.HotelService;
import model.hotel.RoomTypeBean;
import model.hotel.RoomTypeService;
import model.userInfo.UserInfoBean;

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
	
	//@ResponseBody
	@RequestMapping("/voyage/hotel/HotelOrder")
	public String HotelOrder(HttpSession session, String bookingPerson, String phone, String roomTypeNo, String checkIn, String checkOut, String roomType,Model model) throws ParseException{
		
		String year= checkIn.substring(6);
		String month=checkIn.substring(0, 2);
		String day=checkIn.substring(3, 5);
		String checkInDate=year+"-"+month+"-"+day;
		
		System.out.println(checkInDate);
		
		String year2= checkOut.substring(6);
		String month2=checkOut.substring(0, 2);
		String day2=checkOut.substring(3, 5);
		String checkOutDate=year2+"-"+month2+"-"+day2;
		
		System.out.println(checkOutDate);
		
		String accountName=(String)session.getAttribute("accountName");
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date CheckIndate=sdf.parse(checkInDate);
		Date CheckOutdate=sdf.parse(checkOutDate);
		System.out.println(CheckIndate);
		System.out.println(CheckOutdate);
		System.out.println("1111111111111111");
		boolean result=hotelService.qupdate(accountName, 4, bookingPerson, phone, 8, CheckIndate, CheckOutdate);
		if(result==true) {
			model.addAttribute("result","訂購成功");
			System.out.println("222222222222222222");
			return "hotelRoom.order";
			
		}else {
			model.addAttribute("result","訂購失敗");
			System.out.println("333333333333333333");
			return "hotelRoom.order";
		}
		
		}
	
	@ResponseBody
	@RequestMapping("/voyage/hotel/GetRoomInfo")
	public String GetRoomTypeNo(String roomTypeNo,Model model) {
		RoomTypeBean result = roomTypeService.findroom(Integer.valueOf(roomTypeNo));
		model.addAttribute("result",result);
		
		System.out.println("-------");
		System.out.println(result);
		return "";
		}
	
}
