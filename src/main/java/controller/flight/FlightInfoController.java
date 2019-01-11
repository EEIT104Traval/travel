package controller.flight;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import model.flight.AirlineCompareDAO;
import model.flight.service.FlightInfoGetService;

@Controller
public class FlightInfoController {
	@Autowired
	AirlineCompareDAO dao;
	@Autowired
	private FlightInfoGetService flightInfoGetService;

	// Model model,FlightTicketBean bean,String flystyle,String params,
//	@ResponseBody
	@RequestMapping("/FlightInfo")
	public String method(Model model, HttpServletResponse response
//			@RequestParam(value="takeOffPlace")String takeOffPlace,
//			@RequestParam(value="landingPlace")String landingPlace,
//			@RequestParam(value="checkin_date")Date checkin_date,
//			@RequestParam(value="checkout_date")Date checkout_date,
//			@RequestParam(value="peopleType")String peopleType,
//			@RequestParam(value="cabinclass")String cabinclass	
	) throws Exception {
		response.setCharacterEncoding("UTF-8");

		PrintWriter out = response.getWriter();
//		System.out.println("Controller方法開始");
//		System.out.println("params="+takeOffPlace);
//		System.out.println("landingPlace="+landingPlace);
//		System.out.println("checkin_date="+checkin_date);
//		System.out.println("checkout_date="+checkout_date);
//		System.out.println("peopleType="+peopleType);
//		System.out.println("cabinclass="+cabinclass);
//		
//		String takeOffPlaceRE = takeOffPlace.substring(takeOffPlace.length()-4,takeOffPlace.length()-1);
//		String landingPlaceRE = landingPlace.substring(landingPlace.length()-4,landingPlace.length()-1);
//		System.out.println("takeOffPlaceRE"+takeOffPlaceRE);
//		System.out.println("landingPlaceRE"+landingPlaceRE);
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
//		
//        String godatetime = format1.format(checkin_date.getTime());
//        System.out.println("出發時間 ="+godatetime);
//        String backdatetime = format1.format(checkout_date.getTime());
//        System.out.println("出發時間 ="+backdatetime);

		Date go = java.sql.Date.valueOf("2019-02-04");
		Date back = java.sql.Date.valueOf("2019-02-20");
		String date1 = format1.format(go.getTime());
		String date2 = format1.format(back.getTime());
		StringBuffer bfmsearch = new StringBuffer();
//		bfmsearch.append("{\"OTA_AirLowFareSearchRQ\":{\"ResponseType\":\"OTA\",\"ResponseVersion\":\"3.4.0\",\"Target\":\"Production\",\"Version\":\"3.4.0\",\"POS\":{\"Source\":[{\"PseudoCityCode\":\"A2U8\",\"RequestorID\":{\"Type\":\"1\",\"ID\":\"1\",\"CompanyName\":{\"Code\":\"TN\"}}}]},\"OriginDestinationInformation\":[{\"RPH\":\"1\",\"DepartureDateTime\":\"2019-09-01T11:00:00\",\"OriginLocation\":{\"LocationCode\":\"TPE\"},\"DestinationLocation\":{\"LocationCode\":\"HKG\"},\"TPA_Extensions\":{\"SegmentType\":{\"Code\":\"O\"}}},{\"RPH\":\"2\",\"DepartureDateTime\":\"2019-09-15T11:00:00\",\"OriginLocation\":{\"LocationCode\":\"HKG\"},\"DestinationLocation\":{\"LocationCode\":\"TPE\"},\"TPA_Extensions\":{\"SegmentType\":{\"Code\":\"O\"}}}],\"TravelPreferences\":{\"ValidInterlineTicket\":true,\"CabinPref\":[{\"Cabin\":\"Y\",\"PreferLevel\":\"Preferred\"}],\"TPA_Extensions\":{\"TripType\":{\"Value\":\"Return\"},\"LongConnectTime\":{\"Min\":780,\"Max\":1200,\"Enable\":true},\"ExcludeCallDirectCarriers\":{\"Enabled\":true}}},\"TravelerInfoSummary\":{\"SeatsRequested\":[1],\"AirTravelerAvail\":[{\"PassengerTypeQuantity\":[{\"Code\":\"ADT\",\"Quantity\":1}]}]},\"TPA_Extensions\":{\"IntelliSellTransaction\":{\"RequestType\":{\"Name\":\"50ITINS\"}}}}}");
//		bfmsearch.append("{\"OTA_AirLowFareSearchRQ\":{\"ResponseType\":\"OTA\",\"ResponseVersion\":\"3.4.0\",\"Target\":\"Production\",\"Version\":\"3.4.0\",\"POS\":{\"Source\":[{\"PseudoCityCode\":\"A2U8\",\"RequestorID\":{\"Type\":\"1\",\"ID\":\"1\",\"CompanyName\":{\"Code\":\"TN\"}}}]},\"OriginDestinationInformation\":[{\"RPH\":\"1\",\"DepartureDateTime\":\""
//				+godatetime+"\",\"OriginLocation\":{\"LocationCode\":\""
//				+takeOffPlaceRE+"\"},\"DestinationLocation\":{\"LocationCode\":\""
//				+landingPlaceRE+"\"},\"TPA_Extensions\":{\"SegmentType\":{\"Code\":\"O\"}}},{\"RPH\":\"2\",\"DepartureDateTime\":\""
//				+backdatetime+"\",\"OriginLocation\":{\"LocationCode\":\""
//				+landingPlaceRE+"\"},\"DestinationLocation\":{\"LocationCode\":\""
//				+takeOffPlaceRE+"\"},\"TPA_Extensions\":{\"SegmentType\":{\"Code\":\"O\"}}}],\"TravelPreferences\":{\"ValidInterlineTicket\":true,\"CabinPref\":[{\"Cabin\":\"Y\",\"PreferLevel\":\"Preferred\"}],\"TPA_Extensions\":{\"TripType\":{\"Value\":\"Return\"},\"LongConnectTime\":{\"Min\":780,\"Max\":1200,\"Enable\":true},\"ExcludeCallDirectCarriers\":{\"Enabled\":true}}},\"TravelerInfoSummary\":{\"SeatsRequested\":[1],\"AirTravelerAvail\":[{\"PassengerTypeQuantity\":[{\"Code\":\"ADT\",\"Quantity\":"
//				+peopleType+"}]}]},\"TPA_Extensions\":{\"IntelliSellTransaction\":{\"RequestType\":{\"Name\":\"50ITINS\"}}}}}");
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
		try {
			String result = flightInfoGetService.getInfo(bfmsearch.toString());
			System.out.println("result=" + result);
			int index = 0;
			model.addAttribute("result", result);
			Map<String, String> codeMap = new HashMap<>();
			for (int i = 0; i < result.length() - 1; i=i+index-1) {
				index = result.indexOf("OperatingAirline\":{\"Code\":\"");
				String code = result.substring(index + 27, index + 29);
//				System.out.println("{code1="+code);
				String value = dao.findByPrimaryKey(code).getAirlineCompany();
//				String value = dao.findByPrimaryKey("CA").getAirlineCompany();
				if (!codeMap.containsValue(code)) {
					codeMap.put(code, value);
					System.out.println("不包含code="+code+"  value="+value);
				}
//				System.out.println("code=" + code);
//				System.out.println("value=" + value);
				result = result.substring(index+29);
			}
			model.addAttribute("flightCompany",codeMap);

//			JsonObject returnData = new JsonParser().parse(result).getAsJsonObject();

//			List<FlightTicketBean> personlist = new ArrayList<FlightTicketBean>();
//            JSONObject jsonObject = JSONObject.fromObject(result);
//            int result2 = jsonObject.getInt("result");

//			out.println(result);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "/flight/xianqi/step1.jsp";
	}
}
