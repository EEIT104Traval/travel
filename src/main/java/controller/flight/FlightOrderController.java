package controller.flight;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.config.AlipayConfig;

import model.flight.FlightOrderInfoBean;
import model.flight.FlightPassengerInfoBean;
import model.flight.FlightTicketBean;
import model.flight.service.FlightOrderService;

@Controller
public class FlightOrderController {

//	@Autowired
//	private FlightOrderInfoBean FOIBean;
//	
//	@Autowired
//	private FlightPassengerInfoBean FPIBean;
//	
//	@Autowired
//	private FlightTicketBean FTBean;
	@Autowired
	FlightOrderService service;

	@RequestMapping("/FlightOrder")
	public String method(Model model, FlightOrderInfoBean FOIbean, FlightTicketBean FTbean, String totalAmount,
			String takeOffPlace, String landingPlace, String goDay, String goCompany, String goCode, String goCodeOnly,
			String goAirEquipType, String goDeTime, String backDay, String backDeplace, String backArplace,
			String backCodeOnly, String backCompany, String flightNO, String backCode, String backAirEquipType,
			String homi2, String backArTime, String backDeTime, String LastName0, String FirstName0, String LastName1,
			String FirstName1, String contactLastNameCN, String contactGender, HttpServletRequest req,
			String accountName, String contactmobile, String email, Date dealDate, String Gender0, String Gender1,
			String goArTime) throws ParseException {

		FlightOrderInfoBean FOIBean = new FlightOrderInfoBean();
		FOIBean.setAccountName(accountName);
		FOIBean.setAdultCount(2);
		FOIBean.setContactGender(contactGender);
		FOIBean.setContactLastNameCN(contactLastNameCN);
		FOIBean.setBookingCode("AABBXX");
		FOIBean.setPhone(Integer.parseInt(contactmobile));
		FOIBean.setEmail(email);
		FOIBean.setDealDate(dealDate);
		FOIBean.setTotalAmount(totalAmount);
		FOIBean.setOrderStatus("未付款");

		System.out.println("FOIBean=" + FOIBean);

		List<FlightPassengerInfoBean> fpiBeanlist = new ArrayList<>();
		FlightPassengerInfoBean fpiBean1 = new FlightPassengerInfoBean();
		fpiBean1.setFlightTicketNO(156412334);
		fpiBean1.setFirstName(FirstName0);
		fpiBean1.setLastName(LastName0);
		fpiBean1.setAdultOrChild("adult");
//		fpiBean1.setBirth(DateOfBirth0);
		fpiBean1.setTitle(Gender0);
		fpiBeanlist.add(fpiBean1);
		if (LastName1 != null) {
			FlightPassengerInfoBean fpiBean2 = new FlightPassengerInfoBean();
			fpiBean2.setFlightTicketNO(156412335);
			fpiBean2.setFirstName(FirstName1);
			fpiBean2.setLastName(LastName1);
			fpiBean2.setAdultOrChild("adult");
//		fpiBean2.setBirth(DateOfBirth1);
			fpiBean2.setTitle(Gender1);
			fpiBeanlist.add(fpiBean2);
		}

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		List<FlightTicketBean> ftBeanlist = new ArrayList<>();

		FlightTicketBean bean1 = new FlightTicketBean();
		bean1.setFlightNO(goCode);
		bean1.setAirlineCode(goCodeOnly);
//		bean1.setTakeOffPlace(takeOffPlace);
//		bean1.setLandingPlace(landingPlace);
//		bean1.setTakeOffTime(sdf.parse(goDay.substring(0,10)+" "+goDeTime+"00:00"));
//		bean1.setLandingTime(sdf.parse(goDay.substring(0,10)+" "+goArTime+"00:00"));
		
		bean1.setBaggageAllowance(20.0);
		bean1.setGoOrBack("go");
		bean1.setClassLevel("經濟艙");
		System.out.println("bean1="+bean1);
		ftBeanlist.add(bean1);
//		if (backCode != null) {
			FlightTicketBean bean2 = new FlightTicketBean();
			bean2.setFlightNO(backCode);
			bean2.setAirlineCode(backCodeOnly);
//			bean2.setTakeOffPlace(landingPlace);
//			bean2.setLandingPlace(takeOffPlace);
//			bean2.setTakeOffTime(sdf.parse(backDay.substring(0,10)+" "+backDeTime+"00:00"));
//			bean2.setLandingTime(sdf.parse(backDay.substring(0,10)+" "+backArTime+"00:00"));
			bean2.setBaggageAllowance(20.0);
			bean2.setGoOrBack("back");
			bean2.setClassLevel("經濟艙");
			System.out.println("bean2="+bean2);
			ftBeanlist.add(bean2);
//		}
//System.out.println("GOCODE="+goCode+"backCode="+backCode+"backCodeOnly="+backCodeOnly);
		boolean re = service.createThreeTable(FOIBean, fpiBeanlist, ftBeanlist);
//		System.out.println("是否成功塞進去" + re);
//
//		System.out.println("contactGender=" + contactGender);
//		System.out.println("backDeTime=" + backDeTime);
//		System.out.println("確定是否有執行到這ordercontroller裡");
//		System.out.println("accountName="+accountName);
//		System.out.println("accountName="+accountName);
//		System.out.println("accountName="+accountName);
		Double RMBAmountZ = Double.parseDouble(totalAmount.substring(3)) / 4.5;

		float RMBAmount = (float) (Math.round(RMBAmountZ * 100)) / 100;

		Map<String, String> order = new HashMap<>();
		order.put("totalAmount", totalAmount.substring(3));
		order.put("RMBAmount", String.valueOf(RMBAmount));
		order.put("takeOffPlace", takeOffPlace);
		order.put("landingPlace", landingPlace);
		order.put("goDay", goDay);
		order.put("goDeTime", goDeTime);
		order.put("backDay", backDay);
		order.put("backDeTime", backDeTime);
		order.put("LastName0", LastName0);
		order.put("FirstName0", FirstName0);
		order.put("LastName1", LastName1);
		order.put("FirstName1", FirstName1);
		order.put("contactLastNameCN", contactLastNameCN);
		order.put("contactGender", contactGender);

		model.addAttribute("order", order);

		return "flightforth";

	}

	@RequestMapping("/flightPay")
	protected void doGet(HttpServletRequest request, HttpServletResponse response, String WIDout_trade_no,
			String WIDsubject, String WIDtotal_amount, String WIDbody) throws ServletException, IOException {
		// 获得初始化的AlipayClient
		AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id,
				AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key,
				AlipayConfig.sign_type);
		// 设置请求参数

		System.out.println("WIDout_trade_no=" + WIDout_trade_no + "WIDsubject=" + WIDsubject + "WIDtotal_amount="
				+ WIDtotal_amount + "WIDbody=" + WIDbody);
		AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
		alipayRequest.setReturnUrl(AlipayConfig.return_url);
		alipayRequest.setNotifyUrl(AlipayConfig.notify_url);

		// 商户订单号，商户网站订单系统中唯一订单号，必填
		String out_trade_no = WIDout_trade_no;
		// 付款金额，必填
		String total_amount = WIDtotal_amount;
		// 订单名称，必填
		String subject = WIDsubject;
		// 商品描述，可空
		String body = WIDbody;

		alipayRequest.setBizContent("{\"out_trade_no\":\"" + out_trade_no + "\"," + "\"total_amount\":\"" + total_amount
				+ "\"," + "\"subject\":\"" + subject + "\"," + "\"body\":\"" + body + "\","
				+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");

		// 请求
		String result;
		try {
			result = alipayClient.pageExecute(alipayRequest).getBody();
			response.setContentType("text/html;charset=" + AlipayConfig.charset);
			response.getWriter().write(result);// 直接将完整的表单html输出到页面
			response.getWriter().flush();
			response.getWriter().close();
		} catch (AlipayApiException e) {
			e.printStackTrace();
			response.getWriter().write("捕获异常出错");
			response.getWriter().flush();
			response.getWriter().close();
		}

	}

}
