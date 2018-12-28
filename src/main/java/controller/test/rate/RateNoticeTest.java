package controller.test.rate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.rate.RateNoticeBean;
import model.rate.RateNoticeDAO;



@Controller
public class RateNoticeTest {
	@Autowired
	private RateNoticeDAO dao;
	@ResponseBody
	@RequestMapping("/ratenoticePK")
	public RateNoticeBean method() {
		RateNoticeBean bean =dao.findByPrimaryKey(1);
		return bean;
	}
}
