package controller.hotel;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.hotel.HotelOrderDetailsService;
import model.hotel.HotelService;
import model.hotel.RoomTypeBean;
import model.hotel.RoomTypeService;

@Controller
public class RoomAvailableController {

	@Autowired
	private RoomTypeService roomTypeService;
	@Autowired
	private HotelService hotelService;
	@Autowired
	private HotelOrderDetailsService hotelOrderDetailsService;

	@ResponseBody // 回應到傳送的同一個頁面。如果要轉跳頁面。 就要註解掉
	@RequestMapping("/voyage/date.controller") // jQuery的AJAX方法中URL的邏輯名稱
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
	public List<RoomTypeBean> findHotelRoomTypes(@RequestParam Integer hotelNo) {
		return roomTypeService.findByHotelNo(hotelNo);
	}

	// @ResponseBody
	@RequestMapping("/voyage/hotel/HotelOrder")
	public String HotelOrder(HttpSession session, String totalPrice ,String hotelName,String bookingPerson, String phone, String roomTypeNo, String checkIn,
			String checkOut, String roomType, Model model) throws ParseException {
		System.out.println(totalPrice);
		String year = checkIn.substring(6);
		String month = checkIn.substring(0, 2);
		String day = checkIn.substring(3, 5);
		String checkInDate = year + "-" + month + "-" + day;

		System.out.println(checkInDate);

		String year2 = checkOut.substring(6);
		String month2 = checkOut.substring(0, 2);
		String day2 = checkOut.substring(3, 5);
		String checkOutDate = year2 + "-" + month2 + "-" + day2;

		System.out.println(checkOutDate);

		String accountName = (String) session.getAttribute("accountName");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date CheckIndate = sdf.parse(checkInDate);
		Date CheckOutdate = sdf.parse(checkOutDate);
		System.out.println(CheckIndate);
		System.out.println(CheckOutdate);
		System.out.println("轉換成功");
		
		Map<String, Object> order = new HashMap<>();
		Integer dd = Integer.parseInt(day2) - Integer.parseInt(day);
		order.put("accountName",accountName);
		System.out.println("accountName="+accountName);
		order.put("totalprice",totalPrice);
		System.out.println("totalprice="+totalPrice);
		order.put("hotelName",hotelName);
		System.out.println("hotelName="+hotelName);
		order.put("roomType", roomType);
		System.out.println("roomType="+roomType);
		order.put("dd", dd);
		System.out.println("dd="+dd);
		order.put("checkInDate", checkInDate);
		System.out.println("checkInDate="+checkInDate);
		order.put("checkOutDate", checkOutDate);
		System.out.println("checkOutDate="+checkOutDate);
		model.addAttribute("order", order);
		boolean result = hotelService.qupdate(accountName, 4, bookingPerson, phone, 8, CheckIndate, CheckOutdate);
		if (result == true) {
//			model.addAttribute("result", "訂購成功");
			System.out.println("訂購成功");
			return "buyhotel";

		} else {
			model.addAttribute("result", "訂購失敗");
			System.out.println("訂購失敗");
			return "hotelIndex";
		}
	}

	@ResponseBody
	@RequestMapping("/voyage/hotel/GetRoomInfo")
	public String GetRoomTypeNo(String roomTypeNo, Model model) {
		RoomTypeBean result = roomTypeService.findroom(Integer.valueOf(roomTypeNo));
		model.addAttribute("result", result);

		System.out.println("-------");
		System.out.println(result);
		return "";
	}

	@ResponseBody
	@RequestMapping("/voyage/hotel/DateMinus") // 
	public Map<String, String> DateMinus(String checkInDate, String checkOutDate, Integer roomTypeNo)
			throws ParseException {
		Map<String, String> map = new HashMap<>();
		String year = checkInDate.substring(6);
		String month = checkInDate.substring(0, 2);
		String day = checkInDate.substring(3, 5);
		String InDate = year + "-" + month + "-" + day;

//		System.out.println(checkInDate);

		String year2 = checkOutDate.substring(6);
		String month2 = checkOutDate.substring(0, 2);
		String day2 = checkOutDate.substring(3, 5);
		String OutDate = year2 + "-" + month2 + "-" + day2;

//		System.out.println(checkOutDate);

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date CheckIndate = sdf.parse(InDate);
		Date CheckOutdate = sdf.parse(OutDate);

		Integer x = hotelOrderDetailsService.datemiuns(CheckIndate, CheckOutdate);
		map.put("Day", String.valueOf(x));
		RoomTypeBean xbean = roomTypeService.findroom(roomTypeNo);
		map.put("price", String.valueOf(xbean.getPrice()));
		return map;
	}

}
