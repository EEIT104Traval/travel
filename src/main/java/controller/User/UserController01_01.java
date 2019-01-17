package controller.User;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.ticket.TicketInfoBean;
import model.ticket.TicketInfoDAO;
import model.ticket.TicketInfoService;
import model.ticket.dao.TicketInfoDAOHibernate;
import model.tour.service.TourOrderInfoService;
import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoService;

@Controller
public class UserController01_01 {

	@Autowired
	private UserInfoService userInfoService;
	@Autowired
	private TourOrderInfoService tourOrderInfoService;
	@Autowired
	private TicketInfoService ticketInfoService;
	@Autowired
	private TicketInfoDAO ticketInfoDAO;
	
	
	
	
	@ResponseBody
	@RequestMapping("/bindex01_01/User.controller")
	public List<UserInfoBean> method0101(@RequestParam(value = "user", required = false) String user,
			@RequestParam(value = "number", required = false) String number) {
		List<UserInfoBean> result = null;

		System.out.println("user=" + user);
		System.out.println("number=" + number);

		if (number.equals("one")) {
			result = new ArrayList<>();
			result.add(userInfoService.findByAccountName(user));
			System.out.println(result);
		} else if (number.equals("two")) {
			result = new ArrayList<>();
			result.add(userInfoService.findByPhone(user));
			System.out.println(result);
		} else if (number.equals("three")) {
			result = userInfoService.findAll();
			for (UserInfoBean TI : result)
				System.out.println(TI);
		}
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/bindex01_02/User.controller")
	public Map<String, List<?>> method0102(@RequestParam(value = "user", required = false) String user,Model model) {
		
		System.out.println("user=" + user);
		
		Map<String, List<?>> result = null;
		result = userInfoService.findByPrimaryKey(user);
		System.out.println("--------------------------");	
		System.out.println(result);
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/bindex02_01/User.controller")
	public Map<String, List<?>> method0201(@RequestParam(value = "month", required = false)Integer month) {
		
		System.out.println("month=" + month);
		
		Map<String, List<?>> result = null;
		result = tourOrderInfoService.findBuyMonth(month);

		return result;
	}
	@ResponseBody
	@RequestMapping("/bindex03_01/User.controller")
	public String method0301(@RequestParam(value = "path", required = false)String path , String option) throws IOException {
		
		String x;
		System.out.println("path=" + path);
		if(option.equals("up")) {			
			 x = ticketInfoService.UPticketInfo(path);
			System.out.println("選擇上傳"); 
			}else {
			 x = ticketInfoService.DLticketInfo(path);
			 System.out.println("選擇下載");	
			}
		System.out.println(x);
		
		
		return x;
	}
	@ResponseBody
	@RequestMapping("/bindex03_011/User.controller")
	public List<TicketInfoBean> method03011(@RequestParam(value = "path", required = false)String path , String option) throws IOException {
		
		List<TicketInfoBean> bean = ticketInfoDAO.findAll();

		return bean;
	}
	@ResponseBody
	@RequestMapping("/bindex03_03/User.controller")
	public List<TicketInfoBean> method0303(TicketInfoBean bean ,Model model){
		
		List<TicketInfoBean> result = null;
		result = ticketInfoService.select(bean);
		
		
		return result;
	}
	@ResponseBody
	@RequestMapping("/bindex03_031/User.controller")
	public List<TicketInfoBean> method03031(){
		
		List<TicketInfoBean> result = null;
		result = ticketInfoService.findAll();

		return result;
	}
	
	@ResponseBody
	@RequestMapping("/bindex03_032/User.controller")
	public String method03032(Integer ticketNo , String ticketName,String country,
				String ticketDescription,Integer adultTicketPrice,Integer adultTicketSellQ,Integer adultTicketSelledQ) {
		
		System.out.println(ticketName);
		System.out.println(country);
		System.out.println(ticketDescription);
		System.out.println(adultTicketPrice);
		
	        
		TicketInfoBean temp = ticketInfoDAO.findByPrimaryKey(ticketNo);
		System.out.println(ticketNo);	
		
		if(!ticketName.isEmpty()) {
			temp.setTicketName(ticketName);
		}if(!country.isEmpty()) {
			temp.setCountry(country);
		}if(!ticketDescription.isEmpty()) {
			temp.setTicketDescription(ticketDescription);
		}if(adultTicketPrice != null) {
			temp.setAdultTicketPrice(adultTicketPrice);
		}if(adultTicketSellQ!=null) {
			temp.setAdultTicketSellQ(adultTicketSellQ);
		}if(adultTicketSelledQ!=null) {
			temp.setAdultTicketSelledQ(adultTicketSelledQ);
		}
		TicketInfoBean result = ticketInfoDAO.update(temp);
		
		System.out.println("result"+result);
		return result+"";
	}

}
