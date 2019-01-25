package controller.rate;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import model.rate.RateNoticeBean;
import model.rate.RateNoticeService;



@Controller
@SessionAttributes(value={"user","login","accountName"})
public class rateNoticeController {
	@Autowired
	RateNoticeService rateNoticeService;
	
	@InitBinder
	public void registerPropertyEditor(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(java.util.Date.class, "deadline",
				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
	}

	@RequestMapping(path= {"/secure/rate.controller"})
	public String insertRate (Model model,RateNoticeBean bean,BindingResult bindingresult) {
		Map<String, String> errors = new HashMap<>();
		System.out.println("bean="+bean);
		System.out.println("bindingresult="+bindingresult);
		model.addAttribute("errors", errors);
		
		RateNoticeBean result = rateNoticeService.create(bean);
//		return "login.test";
//		return "login.ok";
		return "rate.test";
	}
	@ResponseBody
	@RequestMapping(path= {"/voyage/rateSelect.controller"})
	public List<RateNoticeBean> selectRate(String accountName) {
		
		List<RateNoticeBean> result = rateNoticeService.findByPrimaryKey(accountName);
	
		return result;
	}
}
