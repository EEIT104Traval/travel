package controller.flight;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.flight.FlightTicketBean;
import model.flight.service.FlightInfoGetService;

@Controller
public class FlightInfoController {
	
	@Autowired
	private FlightInfoGetService flightInfoGetService;	
	//Model model,FlightTicketBean bean,String flystyle,String params,
	@ResponseBody
	@RequestMapping("/FlightInfo")
	public String method(@RequestParam(value="takeOffPlace")String takeOffPlace,
			@RequestParam(value="landingPlace")String landingPlace,
			@RequestParam(value="checkin_date")String checkin_date,
			@RequestParam(value="checkout_date")String checkout_date,
			@RequestParam(value="peopleType")String peopleType,
			@RequestParam(value="cabinclass")String cabinclass	
			) {
		
		System.out.println("Controller方法開始");
		System.out.println("params="+takeOffPlace);
		System.out.println("landingPlace="+landingPlace);
		System.out.println("checkin_date="+checkin_date);
		System.out.println("checkout_date="+checkout_date);
		System.out.println("peopleType="+peopleType);
		System.out.println("cabinclass="+cabinclass);
		
		StringBuffer bfmsearch = new StringBuffer();
		bfmsearch.append("{\"OTA_AirLowFareSearchRQ\":{\"ResponseType\":\"OTA\",\"ResponseVersion\":\"3.4.0\",\"Target\":\"Production\",\"Version\":\"3.4.0\",\"POS\":{\"Source\":[{\"PseudoCityCode\":\"A2U8\",\"RequestorID\":{\"Type\":\"1\",\"ID\":\"1\",\"CompanyName\":{\"Code\":\"TN\"}}}]},\"OriginDestinationInformation\":[{\"RPH\":\"1\",\"DepartureDateTime\":\"2019-09-01T11:00:00\",\"OriginLocation\":{\"LocationCode\":\"TPE\"},\"DestinationLocation\":{\"LocationCode\":\"HKG\"},\"TPA_Extensions\":{\"SegmentType\":{\"Code\":\"O\"}}},{\"RPH\":\"2\",\"DepartureDateTime\":\"2019-09-15T11:00:00\",\"OriginLocation\":{\"LocationCode\":\"HKG\"},\"DestinationLocation\":{\"LocationCode\":\"TPE\"},\"TPA_Extensions\":{\"SegmentType\":{\"Code\":\"O\"}}}],\"TravelPreferences\":{\"ValidInterlineTicket\":true,\"CabinPref\":[{\"Cabin\":\"Y\",\"PreferLevel\":\"Preferred\"}],\"TPA_Extensions\":{\"TripType\":{\"Value\":\"Return\"},\"LongConnectTime\":{\"Min\":780,\"Max\":1200,\"Enable\":true},\"ExcludeCallDirectCarriers\":{\"Enabled\":true}}},\"TravelerInfoSummary\":{\"SeatsRequested\":[1],\"AirTravelerAvail\":[{\"PassengerTypeQuantity\":[{\"Code\":\"ADT\",\"Quantity\":1}]}]},\"TPA_Extensions\":{\"IntelliSellTransaction\":{\"RequestType\":{\"Name\":\"50ITINS\"}}}}}");
		
		try {
			String result = flightInfoGetService.getInfo(bfmsearch.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "";
	}
}