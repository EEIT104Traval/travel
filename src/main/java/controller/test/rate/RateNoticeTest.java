package controller.test.rate;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.rate.RateNoticeBean;
import model.rate.RateNoticeDAO;
import model.userInfo.UserInfoBean;



@Controller
public class RateNoticeTest {
	@Autowired
	private RateNoticeDAO dao;
	@ResponseBody
	@RequestMapping("/ratenoticePK")
	public List<RateNoticeBean> method() {
		List<RateNoticeBean> bean =dao.findByAccountName("micky");
		return bean;
	}
	
	 @ResponseBody
	 @RequestMapping("/ratenoticecreate")
	 public RateNoticeBean create() {
		 RateNoticeBean bean1 =new RateNoticeBean();
		 bean1.setAccountName("reese");
		 bean1.setCurrency("日幣");
		 bean1.setTargetRate(27.1);
		 bean1.setDeadline(new java.util.Date(0));
		 bean1.setRegisterDate(new Timestamp(System.currentTimeMillis()));
		 RateNoticeBean bean2 = dao.create(bean1);
		 return bean2;
	 }
}
