package controller.flight;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import model.flight.AirlineCompareDAO;
import model.flight.service.FlightInfoGetService;

@Controller
public class FlightInfoControllerNew {
		
	@Autowired
	AirlineCompareDAO dao;
	@Autowired
	private FlightInfoGetService flightInfoGetService;
//	@ResponseBodyssss
	@RequestMapping("/FlightInfoNew")
	public String method(Model model) throws Exception {
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
		Date go = java.sql.Date.valueOf("2019-02-04");
		Date back = java.sql.Date.valueOf("2019-02-20");
		String date1 = format1.format(go.getTime());
		String date2 = format1.format(back.getTime());
		StringBuffer bfmsearch = new StringBuffer();
		bfmsearch.append(
				"{\"OTA_AirLowFareSearchRQ\":{\"ResponseType\":\"OTA\",\"ResponseVersion\":\"3.4.0\",\"Target\":\"Production\",\"Version\":\"3.4.0\",\"POS\":{\"Source\":[{\"PseudoCityCode\":\"A2U8\",\"RequestorID\":{\"Type\":\"1\",\"ID\":\"1\",\"CompanyName\":{\"Code\":\"TN\"}}}]},\"OriginDestinationInformation\":[{\"RPH\":\"1\",\"DepartureDateTime\":\""
						+ date1 + "\",\"OriginLocation\":{\"LocationCode\":\"" + "TPE"
						+ "\"},\"DestinationLocation\":{\"LocationCode\":\"" + "PVG"
						+ "\"},\"TPA_Extensions\":{\"SegmentType\":{\"Code\":\"O\"}}},{\"RPH\":\"2\",\"DepartureDateTime\":\""
						+ date2 + "\",\"OriginLocation\":{\"LocationCode\":\"" + "PVG"
						+ "\"},\"DestinationLocation\":{\"LocationCode\":\"" + "TPE"
						+ "\"},\"TPA_Extensions\":{\"SegmentType\":{\"Code\":\"O\"}}}],\"TravelPreferences\":{\"ValidInterlineTicket\":true,"
						+ "\"FlightTypePref\":{\"MaxConnections\":\"0\"},"
						+ "\"CabinPref\":[{\"Cabin\":\"Y\",\"PreferLevel\":\"Preferred\"}],\"TPA_Extensions\":{\"TripType\":{\"Value\":\"Return\"},\"LongConnectTime\":{\"Min\":780,\"Max\":1200,\"Enable\":true},\"ExcludeCallDirectCarriers\":{\"Enabled\":true}}},\"TravelerInfoSummary\":{\"SeatsRequested\":[1],\"AirTravelerAvail\":[{\"PassengerTypeQuantity\":[{\"Code\":\"ADT\",\"Quantity\":"
						+ "1"
						+ "}]}]},\"TPA_Extensions\":{\"IntelliSellTransaction\":{\"RequestType\":{\"Name\":\"50ITINS\"}}}}}");
		String result = flightInfoGetService.getInfo(bfmsearch.toString());
		System.out.println("result=" + result);
		System.out.println("為什麼執行不到這裡");
		String result1 = result;
		int index = 0;
		Map<String, String> codeMap = new HashMap<>();
		
		for (int i = 0; i < result.length() - 1; i++) {
			
			index = result.indexOf("OperatingAirline\":{\"Code\":\""); 
			if(index==-1) {
				break;
			}
			String code = result.substring(index + 27, index + 29);
//			System.out.println("{code1="+code);
			String value = dao.findByPrimaryKey(code).getAirlineCompany();
//			String value = dao.findByPrimaryKey("CA").getAirlineCompany();
			if (!codeMap.containsKey(code)) {
				codeMap.put(code, value);
			}
			result = result.substring(index+29);				
		}
		
		System.out.println("codeMap"+codeMap);
		
		 
		for (Map.Entry<String, String> entry : codeMap.entrySet()) {
		 
//		    System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue());
		    if(result1.contains(entry.getKey())) {
		    	result1 = result1.replace("OperatingAirline\":{\"Code\":\""+entry.getKey(),"OperatingAirline\":{\"Code\":\""+entry.getKey()+"\",\"Company\":\""+entry.getValue());
		    }
		 
		}
//		System.out.println("result2="+result1);
		model.addAttribute("result", result1);
		
		return "flightsecound";
	}
	

}
