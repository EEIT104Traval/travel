package controller.tour;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.config.AlipayConfig2;

import model.tour.GroupTourBean;
import model.tour.TourBatchBean;
import model.tour.TourMemberInfoBean;
import model.tour.TourOrderInfoBean;
import model.tour.service.GroupTourService;
import model.tour.service.TourBuyService;
import model.userInfo.UserInfoService;

@Controller
public class Display {

	@Autowired
	private GroupTourService groupTourService;
	@Autowired
	private TourBuyService tourBuyService;
	@Autowired
	private UserInfoService userInfoService;

	@ResponseBody
	@RequestMapping("/tour/display")
	public GroupTourBean TourDisplay(@RequestParam(value = "tourNo", required = false) String tourNo) {
		System.out.println(tourNo);
		GroupTourBean GT = groupTourService.select(tourNo);
		System.out.println(GT);
		return GT;
	}

	@RequestMapping("/tour/Display2/buy")
	public String Buy(Integer serialNo, String tourNo, String accountName, String tourName, Integer tourDays,
			Model model) {
		System.out.println(tourDays);
		Map<String, Object> result = tourBuyService.method(serialNo, accountName);
		System.out.println(result);
		model.addAttribute("tourName", tourName);
		model.addAttribute("tourDays", tourDays);
		model.addAttribute("result", result);
		return "tour.buy";
	}
//	@ResponseBody
//	@RequestMapping("/tour/Display2/order")
//	public String Order(@RequestParam Map<String,String> map , String[] cname , String[] pname , Integer[] price , String[] passenger) {
//		System.out.println(map.toString());
//		String serialNo = map.get("serialNo");
//		String accountName = map.get("accountName");
//		String fullName = map.get("fullName");
//		String phone = map.get("userPhone");
//		String email = map.get("userMail");
//		String userSex = map.get("userSex");
//		Integer total = 0;
//		List<String> sex = new ArrayList<String>();
//		int i = cname.length;
//		Integer quantity = ( i==0 ? 1 : i ) ;
//		for(int x = 0 ; x < quantity ; x++ ) {
//			total += price[x];
//			sex.add(map.get("sex"+x));
//		}
//		Integer orderNo = tourBuyService.order(serialNo, accountName, fullName, phone, email, userSex, quantity, total);
//		for(int x = 0 ; x < quantity ; x++ ) {
//			System.out.println("orderNo="+orderNo);
//			System.out.println("x="+x);
//			System.out.println("cname["+x+"]="+cname[x]);
//			System.out.println("pname["+x+"]="+pname[x]);
//			System.out.println("sex.get("+x+")="+sex.get(x));
//			tourBuyService.member(orderNo, x, cname[x], pname[x], sex.get(x), price[x], passenger[x]);
//		}
//		return "";
//	}

	@RequestMapping("/tour/Display2/order")
	public String test(@RequestParam Map<String, String> map, String[] cname, String[] pname, Integer[] price,
			String[] passenger, Model model) {
		System.out.println(map.toString());
		String serialNo = map.get("serialNo");
		String accountName = map.get("accountName");
		String fullName = map.get("fullName");
		String phone = map.get("userPhone");
		String email = map.get("userMail");
		String userSex = map.get("userSex");
		Integer total = 0;
		List<String> sex = new ArrayList<String>();
		int i = cname.length;
		if (i == 0) {
			cname = new String[1];
			cname[0] = "";
		}
		if (pname.length == 0) {
			pname = new String[1];
			pname[0] = "";
		}
		Integer quantity = (i == 0 ? 1 : i);
		for (int x = 0; x < quantity; x++) {
			total += price[x];
			sex.add(map.get("sex" + x));
		}
		TourOrderInfoBean order = tourBuyService.order(serialNo, accountName, fullName, phone, email, userSex, quantity,
				total, sex, cname, pname, price, passenger);
		TourBatchBean batch = tourBuyService.BatchfindPK(order.getSerialNo());
		model.addAttribute("TourOrderInfoBean", order);
		model.addAttribute("TourBatchBean", batch);
		return "tour.order";
	}

	@ResponseBody
	@RequestMapping("/tour/Display2/acc")
	public Map<String, List<?>> method(String accountName) {
		Map<String, List<?>> result = null;
		result = userInfoService.findByPrimaryKey(accountName);
		return result;
	}

	@ResponseBody
	@RequestMapping("/tour/Display2/odmeber")
	public List<TourMemberInfoBean> odmeber(Integer orderNo) {
		List<TourMemberInfoBean> result = tourBuyService.findOrderNo(orderNo);
		return result;
	}

	@ResponseBody
	@RequestMapping("/tour/Display2/update")
	public TourMemberInfoBean update(Integer orderNo, Integer purchaseOrder, String fullName, String passport, String sex) {
		TourMemberInfoBean result = tourBuyService.updateMember(orderNo, purchaseOrder,fullName,passport,sex);
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/tour/Display2/cancel")
	public TourOrderInfoBean cancel(Integer orderNo) {
		TourOrderInfoBean result = tourBuyService.cancel(orderNo);
		System.out.println(result);
		return result;
	}

	@RequestMapping("/tour/Display2/submit")
	protected void doGet(HttpServletRequest request, HttpServletResponse response, String WIDout_trade_no,
			String WIDsubject, String WIDtotal_amount, String WIDbody) throws ServletException, IOException {
		System.out.println(WIDout_trade_no);
		System.out.println(WIDsubject);
		System.out.println(WIDtotal_amount);
		System.out.println(WIDbody);
		// 获得初始化的AlipayClient
		AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig2.gatewayUrl, AlipayConfig2.app_id,
				AlipayConfig2.merchant_private_key, "json", AlipayConfig2.charset, AlipayConfig2.alipay_public_key,
				AlipayConfig2.sign_type);
		// 设置请求参数

		System.out.println("WIDout_trade_no=" + WIDout_trade_no + "WIDsubject=" + WIDsubject + "WIDtotal_amount="
				+ WIDtotal_amount + "WIDbody=" + WIDbody);
		AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
		alipayRequest.setReturnUrl(AlipayConfig2.return_url);
		alipayRequest.setNotifyUrl(AlipayConfig2.notify_url);

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
			response.setContentType("text/html;charset=" + AlipayConfig2.charset);
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