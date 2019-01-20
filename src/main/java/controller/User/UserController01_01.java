package controller.User;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import model.ticket.TicketInfoBean;
import model.ticket.TicketInfoDAO;
import model.ticket.TicketInfoService;
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

	@RequestMapping("/test")
	public class MyController {

	    @RequestMapping(value = "/upload.do", method = RequestMethod.POST)
	    // 这里的MultipartFile对象变量名跟表单中的file类型的input标签的name相同，所以框架会自动用MultipartFile对象来接收上传过来的文件，当然也可以使用@RequestParam("img")指定其对应的参数名称
	    public String upload(MultipartFile csv, HttpSession session)
	            throws Exception {
	    	System.out.println(csv.toString());
//	    	System.out.println(session.toString());
	        // 如果没有文件上传，MultipartFile也不会为null，可以通过调用getSize()方法获取文件的大小来判断是否有上传文件
	        if (csv.getSize() > 0) {
	            // 得到项目在服务器的真实根路径，如：/home/tomcat/webapp/项目名/images
	            String path = session.getServletContext().getRealPath("images");
	            // 得到文件的原始名称，如：美女.png
	            String fileName = csv.getOriginalFilename();
	            // 通过文件的原始名称，可以对上传文件类型做限制，如：只能上传jpg和png的图片文件
	            if (fileName.endsWith("jpg") || fileName.endsWith("png")) {
	                File file = new File(path, fileName);
	                csv.transferTo(file);
	                return "/success.jsp";
	            }
	        }
	        return "/error.jsp";
	    }
	}
}
