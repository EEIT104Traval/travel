//package controller.flight;
//
//import java.io.IOException;
//import java.util.HashMap;
//import java.util.Map;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.alipay.api.AlipayApiException;
//import com.alipay.api.AlipayClient;
//import com.alipay.api.DefaultAlipayClient;
//import com.alipay.api.request.AlipayTradePagePayRequest;
//import com.alipay.config.AlipayConfig;
//
//import model.flight.FlightOrderInfoBean;
//import model.flight.FlightTicketBean;
//
//@Controller
//public class FlightOrderController {
////	String totalAmount" name="totalAmount" style="display: none;" value="${map.totalAmount}">
////    String goDay" name="goDay" style="display: none;" value="${map.goDay}">
////    String takeOffPlace" name="takeOffPlace" style="display: none;" value="${map.goDeplace}">
////    String landingPlace" name="landingPlace" style="display: none;" value="${map.goArplace}">
////    String goCompany" name="goCompany" style="display: none;" value="${map.goCompany}">
////    String goCode" name="goCode" style="display: none;" value="${map.goCode}">
////    String goCodeOnly" name="goCodeOnly" style="display: none;" value="${map.goCodeOnly}">
////    String goAirEquipType" name="goAirEquipType" style="display: none;" value="${map.goAirEquipType}">
////    String goDeTime" name="goDeTime" style="display: none;" value="${map.goDeTime}">
////    String homi" name="homi" style="display: none;" value="${map.homi}">
////    String goArTime" name="goArTime" style="display: none;" value="${map.goArTime}">
////    String backDay" name="backDay" style="display: none;" value="${map.backDay}">
////    String backDeplace" name="backDeplace" style="display: none;" value="${map.backDeplace}">
////    String backArplace" name="backArplace" style="display: none;" value="${map.backArplace}">
////    String backCodeOnly" name="backCodeOnly" style="display: none;" value="${map.backCodeOnly}">
////    String backCompany" name="backCompany" style="display: none;" value="${map.backCompany} ">
////    String flightNO" name="flightNO" style="display: none;" value="${map.backCode} ">
////    String backCode" name="backCode" style="display: none;" value="${map.backDeTime}">
////    String backAirEquipType" name="backAirEquipType" style="display: none;" value="${map.backAirEquipType}">
////    String homi2" name="homi2" style="display: none;" value="${map.homi2}">
////    String backArTime" name="backArTime" style="display: none;" value="${map.backArTime}">
////	
//	@RequestMapping("/FlightOrder")
//	public String method(Model model,FlightOrderInfoBean FOIbean,FlightTicketBean FTbean,
//			String totalAmount,String takeOffPlace,String landingPlace,String goDay,
//			String goCompany,String goCode,String goCodeOnly,
//			String goAirEquipType,String goDeTime,
//			String backDay,String backDeplace,String backArplace,String backCodeOnly,
//			String backCompany,String flightNO,String backCode,String backAirEquipType
//			,String homi2,String backArTime,String backDeTime,String LastName0,String FirstName0,String LastName1,
//			String FirstName1,String contactLastNameCN,String contactGender,HttpServletRequest req) {
////		System.out.println("bean="+FOIbean);
////		System.out.println("FTbean="+FTbean);
////		System.out.println("LastName0="+LastName0);
////		System.out.println("FirstName0="+FirstName0);
////		System.out.println("LastName1="+LastName1);
////		System.out.println("FirstName1="+FirstName1);
//		System.out.println("contactGender="+contactGender);
//		System.out.println("backDeTime="+backDeTime);
//		
//		Map<String,String> order = new HashMap<>();
//		order.put("totalAmount", totalAmount);
//		order.put("takeOffPlace", takeOffPlace);
//		order.put("landingPlace", landingPlace);
//		order.put("goDay", goDay);
//		order.put("goDeTime", goDeTime);
//		order.put("backDay", backDay);
//		order.put("backDeTime", backDeTime);
//		order.put("LastName0", LastName0);
//		order.put("FirstName0", FirstName0);
//		order.put("LastName1", LastName1);
//		order.put("FirstName1", FirstName1);
//		order.put("contactLastNameCN", contactLastNameCN);
//		order.put("contactGender", contactGender);
//		
//		model.addAttribute("order", order);
//		
//		return "flightforth";
//		
//	}
////	@RequestMapping("/flightPay")
////	@ResponseBody
////	public String pay(String WIDout_trade_no,String WIDsubject,String WIDtotal_amount,String WIDbody,HttpServletRequest res) throws UnsupportedEncodingException, AlipayApiException {
//////		AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
////		res.setAttribute("WIDout_trade_no",WIDout_trade_no );
////		res.setAttribute("WIDsubject",WIDsubject );
////		res.setAttribute("WIDtotal_amount",WIDtotal_amount );
////		res.setAttribute("WIDbody",WIDbody );
////		
////		System.out.println(WIDout_trade_no+"-"+WIDsubject+"-"+WIDtotal_amount+"-"+WIDbody);
////		
////		//获得初始化的AlipayClient
////		AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
////		
////		//设置请求参数
////		AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
////		alipayRequest.setReturnUrl(AlipayConfig.return_url);
////		alipayRequest.setNotifyUrl(AlipayConfig.notify_url);
////		
////		//商户订单号，商户网站订单系统中唯一订单号，必填
////		String out_trade_no = new String(WIDout_trade_no.getBytes("ISO-8859-1"),"UTF-8");
////		//付款金额，必填
////		String total_amount = new String(WIDtotal_amount.getBytes("ISO-8859-1"),"UTF-8");
////		//订单名称，必填
////		String subject = new String(WIDsubject.getBytes("ISO-8859-1"),"UTF-8");
////		//商品描述，可空
////		String body = new String(WIDbody.getBytes("ISO-8859-1"),"UTF-8");
////		
////		alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
////				+ "\"total_amount\":\""+ total_amount +"\"," 
////				+ "\"subject\":\""+ subject +"\"," 
////				+ "\"body\":\""+ body +"\"," 
////				+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
////		
////		//若想给BizContent增加其他可选请求参数，以增加自定义超时时间参数timeout_express来举例说明
////		//alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
////		//		+ "\"total_amount\":\""+ total_amount +"\"," 
////		//		+ "\"subject\":\""+ subject +"\"," 
////		//		+ "\"body\":\""+ body +"\"," 
////		//		+ "\"timeout_express\":\"10m\"," 
////		//		+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
////		//请求参数可查阅【电脑网站支付的API文档-alipay.trade.page.pay-请求参数】章节
////		
////		//请求
////		String result = alipayClient.pageExecute(alipayRequest).getBody();
////		
////		//输出
//////		out.println(result);
////		
////		
////		
////		return result;
////	}
//}
//
