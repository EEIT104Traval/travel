package controller.hotel;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.hotel.RoomTypeService;

@Controller
public class RoomAvailableController {
	
	@Autowired
	private RoomTypeService roomTypeService;
	
	
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
}
