package controller.flight;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import model.flight.service.AirportSearchService;

@Controller
public class FlightSecondController {
	@Autowired
	AirportSearchService service;
	
	@RequestMapping("/FlightInfoSecound")
	public String method(Model model,String goCompany,String backCompany,String goCode,
			String goDay,String goDePlace,String goArPlace,String backDePlace,String backArPlace,String homi,String homi2,String goAirEquipType,String backAirEquipType,
			String backCode,String backDay,String totalAmount,String taxAmount,String ticketAmount,String peopleCount
//			,String landingPlace,Date takeoff_date,Date flyback_date,String peopleType
			) {
		
//		System.out.println("takeOffPlace="+takeOffPlace+"landingPlace="+landingPlace+"takeoff_date="+takeoff_date+"flyback_date="+flyback_date+"peopleType="+peopleType);
//		System.out.println("goCompany="+goCompany+"backCompany="+backCompany+"goCode="+goCode+"goDay="+goDay+"goPlace="+goPlace+"homi="+homi+"homi2"+homi2+"goAirEquipType"+goAirEquipType);
		Map<String, String> map = new HashMap<>();
		map.put("goCompany", goCompany);
		map.put("backCompany", backCompany);
		//從資料庫撈地點中文
		
		List<String> code = new ArrayList<>();
		code.add(goDePlace.substring(5, 8));
		code.add(goArPlace.substring(5, 8));
		code.add(backDePlace.substring(5, 8));
		code.add(backArPlace.substring(5, 8));
		
		List<String> place = service.searchAirportName(code);
		
		
		map.put("goCode", goCode);
		map.put("goCodeOnly",goCode.substring(0, 2));
		map.put("goDay", goDay);
		map.put("goDeTime", goDePlace.substring(0,5));
		map.put("goArTime", goArPlace.substring(0,5));
		map.put("goDeplace", place.get(0));
		map.put("goArplace", place.get(1));
		map.put("homi", homi);
		if(goAirEquipType.startsWith("7")) {
			map.put("goAirEquipType", "波音 "+goAirEquipType);
		}else {
			map.put("goAirEquipType", "空中巴士 "+goAirEquipType);
		}
		
		
		map.put("backCode", backCode);
		map.put("backCodeOnly",backCode.substring(0, 2));
		map.put("backDeTime", backDePlace.substring(0,5));
		map.put("backArTime", backArPlace.substring(0,5));
		map.put("backDeplace", place.get(2));
		map.put("backArplace", place.get(3));
		map.put("backDay", backDay);
		map.put("homi2", homi2);
//		System.out.println("goAirEquipType===>"+goAirEquipType.indexOf(0));
	
		map.put("backCode", backCode);
		map.put("backDay", backDay);
		if(backAirEquipType.startsWith("7")) {
			map.put("backAirEquipType", "波音 "+backAirEquipType);
		}else {
			map.put("backAirEquipType", "空中巴士 "+backAirEquipType);
		}
		map.put("totalAmount", totalAmount);
		map.put("taxAmount", taxAmount);
		map.put("ticketAmount", ticketAmount);
		map.put("peopleCount", peopleCount);
		model.addAttribute("map",map);
		
		return "flightthird";
	}
	
	
	
}
