package controller.tour;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.tour.GroupTourBean;
import model.tour.service.GroupTourService;
import model.tour.service.TourBuyService;

@Controller
public class Display {

	@Autowired
	private GroupTourService groupTourService;
	@Autowired
	private TourBuyService tourBuyService;

	@ResponseBody
	@RequestMapping("/tour/display")
	public GroupTourBean TourDisplay(@RequestParam(value = "tourNo", required = false) String tourNo) {
		System.out.println(tourNo);
		GroupTourBean GT = groupTourService.select(tourNo);
		System.out.println(GT);
		return GT;
	}

	@RequestMapping("/tour/Display2/buy")
	public String Buy(Integer serialNo,String tourNo,String accountName,String tourName,Integer tourDays,Model model) {
		System.out.println(tourDays);
		Map<String,Object> result = tourBuyService.method(serialNo, accountName);
		System.out.println(result);
		model.addAttribute("tourName",tourName);
		model.addAttribute("tourDays",tourDays);
		model.addAttribute("result",result);
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
	
	@ResponseBody
	@RequestMapping("/tour/Display2/order")
	public String test(@RequestParam Map<String,String> map , String[] cname , String[] pname , Integer[] price , String[] passenger) {
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
		Integer quantity = ( i==0 ? 1 : i ) ;
		for(int x = 0 ; x < quantity ; x++ ) {
			total += price[x];
			sex.add(map.get("sex"+x));
		}
		Integer orderNo = tourBuyService.order
			(serialNo, accountName, fullName, phone, email, userSex, quantity, total,sex, cname , pname ,price ,  passenger);

		return orderNo+"";
	}
}
