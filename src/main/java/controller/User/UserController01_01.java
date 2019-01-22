package controller.User;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.ticket.TicketInfoBean;
import model.ticket.TicketInfoDAO;
import model.ticket.TicketInfoService;
import model.tour.TourOrderInfoBean;
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
	public List<TourOrderInfoBean> method0201(@RequestParam(value = "month", required = false)Integer month) {
		
		System.out.println("month=" + month);
		
		List<TourOrderInfoBean> result = null;
		result = tourOrderInfoService.findBuyMonth(month);

		return result;
	}
		   
		   @RequestMapping("/export.do")
		   @ResponseBody
		public  byte[] export(HttpServletResponse response , Integer month){    
	    response.setContentType("application/binary;charset=UTF-8");
	    byte[] x =null;
	    try{
	    	ServletOutputStream out=response.getOutputStream();
	        String fileName=new String(("UserInfo "+ new SimpleDateFormat("yyyy-MM-dd").format(new Date())).getBytes(),"UTF-8");
	        response.setHeader("Content-disposition", "attachment; filename=" + fileName + ".xls");
	        response.setContentType("application/binary;charset=UTF-8");
	        String[] titles = { "國家" , "名稱", "數量", "購買日期","價格"};  
	        HSSFWorkbook result = userInfoService.export(titles, out, month);
	        System.out.println("result="+result);
	        
	    } catch(Exception e){
	        e.printStackTrace();
	        System.out.println("excel失敗");
	    }
		return x;
	}

	@ResponseBody
	@RequestMapping("/bindex03_011/User.controller")
	public TicketInfoBean method03011(TicketInfoBean bean) {
		
		TicketInfoBean result = null;
		if (bean != null) {
			result = ticketInfoService.insert(bean);
		}
		return result;
	}
	
	
	@ResponseBody
	@RequestMapping("/bindex03_012/User.controller")
	public List<TicketInfoBean> method03012(@RequestParam(value = "path", required = false)String path , String option) throws IOException {
		
		List<TicketInfoBean> bean = ticketInfoDAO.findAll();

		return bean;
	}
	@ResponseBody
	@RequestMapping("/bindex03_021/User.controller")
	public List<TicketInfoBean> method03021(){
		
		List<TicketInfoBean> result = null;
		result = ticketInfoService.findAll();
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/bindex03_022/User.controller")
	public String method03022(Integer ticketNo , String ticketName,String country,
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
	
	@ResponseBody
	@RequestMapping("/bindex03_03/User.controller")
	public List<TicketInfoBean> method0303(TicketInfoBean bean ,Model model){
		
		List<TicketInfoBean> result = null;
		result = ticketInfoService.select(bean);
		
		return result;
	}
	@ResponseBody
	@RequestMapping("/bindex03_031/User.controller")
	public void method03031(TicketInfoBean bean ,Model model){
		
		if (bean != null) {
			ticketInfoDAO.remove(bean.getTicketNo());
		}
	}
	//---------------------------------以下勿動 測試中 非常嚴重-----------------------------------
}
