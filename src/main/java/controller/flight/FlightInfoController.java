package controller.flight;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import model.flight.service.CreateAirInfoService;
import model.flight.service.FlightInfoGetService;
import model.flight.service.ThreeTableService;

@Controller
public class FlightInfoController {
	
	@Autowired
	ThreeTableService ttService;
	
	@Autowired
	CreateAirInfoService CIservice;
		
	@Autowired
	private FlightInfoGetService flightInfoGetService;
//	@ResponseBodyssss
	@RequestMapping("/FlightInfoNew")
	public String method(Model model,String takeOffPlace,String landingPlace,Date takeoff_date,Date flyback_date,String peopleType){
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
		 SimpleDateFormat format2 = new SimpleDateFormat("yyyy/MM/dd");
		String date1 = format1.format(takeoff_date.getTime());
		String date2 = format1.format(flyback_date.getTime());
		String dateSecound1 = format2.format(takeoff_date);
		String dateSecound2 = format2.format(flyback_date);
		StringBuffer bfmsearch = new StringBuffer();
		bfmsearch.append(
				"{\"OTA_AirLowFareSearchRQ\":{\"ResponseType\":\"OTA\",\"ResponseVersion\":\"3.4.0\",\"Target\":\"Production\",\"Version\":\"3.4.0\",\"POS\":{\"Source\":[{\"PseudoCityCode\":\"A2U8\",\"RequestorID\":{\"Type\":\"1\",\"ID\":\"1\",\"CompanyName\":{\"Code\":\"TN\"}}}]},\"OriginDestinationInformation\":[{\"RPH\":\"1\",\"DepartureDateTime\":\""
						+ date1 + "\",\"OriginLocation\":{\"LocationCode\":\"" + takeOffPlace.substring(takeOffPlace.length()-4, takeOffPlace.length()-1)
						+ "\"},\"DestinationLocation\":{\"LocationCode\":\"" + landingPlace.substring(landingPlace.length()-4, landingPlace.length()-1)
						+ "\"},\"TPA_Extensions\":{\"SegmentType\":{\"Code\":\"O\"}}},{\"RPH\":\"2\",\"DepartureDateTime\":\""
						+ date2 + "\",\"OriginLocation\":{\"LocationCode\":\"" + landingPlace.substring(landingPlace.length()-4, landingPlace.length()-1)
						+ "\"},\"DestinationLocation\":{\"LocationCode\":\"" + takeOffPlace.substring(takeOffPlace.length()-4, takeOffPlace.length()-1)
						+ "\"},\"TPA_Extensions\":{\"SegmentType\":{\"Code\":\"O\"}}}],\"TravelPreferences\":{\"ValidInterlineTicket\":true,"
						+ "\"FlightTypePref\":{\"MaxConnections\":\"0\"},"
						+ "\"CabinPref\":[{\"Cabin\":\"Y\",\"PreferLevel\":\"Preferred\"}],\"TPA_Extensions\":{\"TripType\":{\"Value\":\"Return\"},\"LongConnectTime\":{\"Min\":780,\"Max\":1200,\"Enable\":true},\"ExcludeCallDirectCarriers\":{\"Enabled\":true}}},\"TravelerInfoSummary\":{\"SeatsRequested\":[1],\"AirTravelerAvail\":[{\"PassengerTypeQuantity\":[{\"Code\":\"ADT\",\"Quantity\":"
						+ peopleType.substring(0, 1)
						+ "}]}]},\"TPA_Extensions\":{\"IntelliSellTransaction\":{\"RequestType\":{\"Name\":\"50ITINS\"}}}}}");
		Map<String, String> indexValue = new HashMap<>();
		indexValue.put("takeOffPlace", takeOffPlace);
		indexValue.put("landingPlace", landingPlace);
		indexValue.put("takeoff_date", dateSecound1);
		indexValue.put("flyback_date", dateSecound2);
		indexValue.put("peopleType", peopleType.substring(0, 4));
		
		model.addAttribute("indexValue",indexValue);
		
		String result = null;
		try {
			result = flightInfoGetService.addCompanyCN(bfmsearch.toString());
		} catch (Exception e) {
			e.printStackTrace();
			
			return "errorPage";
		}
		
		model.addAttribute("result", result);
		return "flightsecound";
	}
	@RequestMapping("/FlightInfoNew1")
	public String  method1() throws IOException {
		CIservice.Airlinecreate();
		CIservice.AirlinecreateParserXml();
		
		return "flightsecound";
	}

}
