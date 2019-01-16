package controller.hotel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import model.hotel.RoomTypeBean;
import model.hotel.RoomTypeService;

@Controller
public class RoomTypeController {

	@Autowired
	private RoomTypeService roomTypeService;
	
	
	@RequestMapping("/voyage/type.controller")
	public String findroom(Model model) {
		System.out.println("1111111111");
		List<RoomTypeBean> roomTypeBean = roomTypeService.selectAll();
		System.out.println(roomTypeBean);
		model.addAttribute("roomtypeNo", roomTypeBean);
		return "hotelRoom.search";
	}
	
}

