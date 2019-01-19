package controller.rate;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.text.SimpleDateFormat;

import org.springframework.stereotype.Controller;

import model.rate.RateBean;
@Controller
public class ratetest {
	public static void main(String[] args) {
		String s = null;

		try {
			//查路徑
//			File f = new File("../webapp/resource/rate/ratecsv.csv");
//			File f = new File("..\\webapp\\resource\\rate\\ratecsv.csv");
//			File f = new File("C:/Travel/src/main/webapp/resource/rate/ratecsv.csv");
//			File f = new File("/Travel/src/main/webapp/ratecsv.csv");
			File f = new File("C:/ratecsv.csv");
//			File f = new File("C:/Travel/src/main/webapp/resource/rate/ratecsv.csv");
//			File f = new File("C:/Travel/src/main/webapp/resource/rate/ratecsv.csv");
//			File f = new File("C:/Travel/src/main/webapp/resource/rate/ratecsv.csv");
			 System.out.println("絕對路徑 : " + f.getAbsolutePath());
		        System.out.println("路徑 : " + f.toPath());
		        System.out.println("URI : " + f.toURI());
		        System.out.println("URI + ASCII : " + f.toURI().toASCIIString());
			
			
			BufferedReader br = new BufferedReader(new FileReader(f));
			RateBean bean = new RateBean();		
			
			br.readLine();
			while ((s = br.readLine()) != null) {
				String[] a = s.split(",");
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
System.out.println(bean);
			}
			br.close();

		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
}
