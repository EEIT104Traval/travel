package controller.rate;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import model.rate.RateBean;
import model.rate.RateService;
@Controller
public class ratetestma {
		@Autowired
		private ServletContext application;
		@Autowired
		RateService rateService;

		@RequestMapping("/rate/xxxxxxx")
		void method() throws Exception{
//			List<RateBean> ls=new ArrayList<>();
			BufferedReader br = new BufferedReader(
					new InputStreamReader(application.getResourceAsStream("/rate/ratecsv.csv")));
			String line = br.readLine();

			while ((line = br.readLine()) != null) {
				RateBean bean = new RateBean();	
//				System.out.println("line="+line);
				String[] a = line.split(",");
				bean.setCurrency(a[0]);
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
				java.util.Date d = sdf.parse(a[1]);
				long l = d.getTime();
				bean.setUpdateTime(new java.sql.Date(l));
				bean.setCashBuy(Double.parseDouble(a[2]));
				bean.setCashSell(Double.parseDouble(a[3]));
				bean.setSpotBuy(Double.parseDouble(a[4]));
				bean.setSpotSell(Double.parseDouble(a[5]));
				bean.setCountry(a[6]);
				rateService.createRates(bean);
//				ls.add(bean);
				System.out.println(bean);
			}
			br.close();

		} 
		
			
 
	}


