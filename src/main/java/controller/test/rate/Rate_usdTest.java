package controller.test.rate;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.rate.gb.Rate_USDBean;
import model.rate.gb.Rate_USDDAO;

@Controller
public class Rate_usdTest {
	@Autowired
	private Rate_USDDAO dao;
	
	@ResponseBody
	@RequestMapping("rate_usdPK")
	public Rate_USDBean method() {
		java.util.Date d = Date.valueOf("2018-12-24");
		Rate_USDBean bean = dao.findByPrimaryKey(d);
		return bean;
	}
	
	

}
