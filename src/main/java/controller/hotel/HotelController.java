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
	@RequestMapping("/voyage/country.controller")
	public List<HotelBean> searchByCountry(@RequestParam(value = "country", required = false) String countryCH) {
		// Locale locale = LocaleContextHolder.getLocale(); //多國語系
		System.out.println("country=" + countryCH);
//接收資料
//呼叫model
		List<HotelBean> result = hotelService.searchCountry(countryCH);
		for (HotelBean TI : result)
			System.out.println(TI);
//呼叫view		
		return result;
	}

	@ResponseBody
	@RequestMapping("/voyage/city.controller")
	public List<HotelBean> searchByCity(@RequestParam(value = "city", required = false) String cityCH) {
		System.out.println("country=" + cityCH);
		List<HotelBean> result = hotelService.searchCity(cityCH);
		for (HotelBean TI : result)
			System.out.println(TI);
		return result;
	}

	@ResponseBody
	@RequestMapping("/voyage/all.controller")
	public List<HotelBean> searchAll() {
		List<HotelBean> result = hotelService.searchAll();
		System.out.println(result);
		return result;
	}

}
