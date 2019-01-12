package controller.flight;

import java.text.SimpleDateFormat;
import java.util.Date;

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
						+ "\"},\"DestinationLocation\":{\"LocationCode\":\"" + "CDG"
						+ "\"},\"TPA_Extensions\":{\"SegmentType\":{\"Code\":\"O\"}}},{\"RPH\":\"2\",\"DepartureDateTime\":\""
						+ date2 + "\",\"OriginLocation\":{\"LocationCode\":\"" + "CDG"
						+ "\"},\"DestinationLocation\":{\"LocationCode\":\"" + "TPE"
						+ "\"},\"TPA_Extensions\":{\"SegmentType\":{\"Code\":\"O\"}}}],\"TravelPreferences\":{\"ValidInterlineTicket\":true,"
//						+ "\"FlightTypePref\":{\"MaxConnections\":\"0\"}"
						+ "\"CabinPref\":[{\"Cabin\":\"Y\",\"PreferLevel\":\"Preferred\"}],\"TPA_Extensions\":{\"TripType\":{\"Value\":\"Return\"},\"LongConnectTime\":{\"Min\":780,\"Max\":1200,\"Enable\":true},\"ExcludeCallDirectCarriers\":{\"Enabled\":true}}},\"TravelerInfoSummary\":{\"SeatsRequested\":[1],\"AirTravelerAvail\":[{\"PassengerTypeQuantity\":[{\"Code\":\"ADT\",\"Quantity\":"
						+ "1"
						+ "}]}]},\"TPA_Extensions\":{\"IntelliSellTransaction\":{\"RequestType\":{\"Name\":\"50ITINS\"}}}}}");
		String result = flightInfoGetService.getInfo(bfmsearch.toString());
		System.out.println("result=" + result);
		
		
		
		
		
		
		
		
		return "/voyage/index.jsp";
	}
	
	
	
	
	
	
	
	
	
	
	
}
