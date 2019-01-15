package controller.flight;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FlightSecondController {
	@RequestMapping("/FlightInfoSecound")
	public String method(Model model,String goCompany,String backCompany,String goCode,String goDay,String goPlace,String homi,String homi2,String goAirEquipType
//			,String landingPlace,Date takeoff_date,Date flyback_date,String peopleType
			) {
		
//		System.out.println("takeOffPlace="+takeOffPlace+"landingPlace="+landingPlace+"takeoff_date="+takeoff_date+"flyback_date="+flyback_date+"peopleType="+peopleType);
		System.out.println("goCompany="+goCompany+"backCompany="+backCompany+"goCode="+goCode+"goDay="+goDay+"goPlace="+goPlace+"homi="+homi+"homi2"+homi2+"goAirEquipType"+goAirEquipType);
		
		
		
		
		return "flightthird";
	}
	
	
	
}
