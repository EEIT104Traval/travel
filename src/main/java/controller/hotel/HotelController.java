package controller.hotel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.hotel.HotelBean;
import model.hotel.HotelService;


@Controller
public class HotelController {
	
	@Autowired
	private HotelService hotelService;
	
	@ResponseBody
	@RequestMapping("/voyage/hotels.controller")
	public List<HotelBean> method(@RequestParam(value="country",required=false)String country) {
	//	Locale locale = LocaleContextHolder.getLocale(); //多國語系
		System.out.println("country="+country);
//接收資料
//呼叫model
		List<HotelBean> result = hotelService.searchCountry(country);
		for(HotelBean TI : result)
		System.out.println(TI);
//呼叫view		
			return result;
		}
	
	}

