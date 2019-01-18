package model.flight.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Base64;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;

import model.flight.AirlineCompareBean;
import model.flight.AirlineCompareDAO;
import model.flight.FlightInfoGet;
import model.flight.Token;

@Service
public class FlightInfoGetService {

	@Autowired(required = false)
	private Token token;

	public String getInfo(String bfmsearch) throws Exception{
		System.out.println("getInfoService開始");

		/*
		 * Step 1 取得ClientID
		 * 
		 */
		String ClientID = "V1:987632:A2U8:AA";// "V1:d6ztddyuw791ocj6:DEVCENTER:EXT";
		String Password = "SDY2KUL";// "rDd0nE8G";

		/*
		 * Step 2 轉換為Base64String
		 * 
		 */
		String Base_ClientID = Base64.getEncoder().encodeToString(ClientID.getBytes("utf-8"));
		String Base_Password = Base64.getEncoder().encodeToString(Password.getBytes("utf-8"));
		String Base_Compose = Base64.getEncoder()
				.encodeToString((Base_ClientID + ":" + Base_Password).getBytes("utf-8"));

		/*
		 * Step 3 取得AccessToken
		 */
		// https: //api.sabre.com正式環境
		// https: //api.test.sabre.com測試環境
		URL url = new URL("https://api.sabre.com/v2/auth/token");
		StringBuffer tokenresponse = new StringBuffer();

		HttpURLConnection hreq = (HttpURLConnection) url.openConnection();
		hreq.setRequestMethod("POST");
		hreq.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
		hreq.setRequestProperty("Authorization", "Basic " + Base_Compose);
		hreq.setDoOutput(true);

		OutputStream os = hreq.getOutputStream();
		os.write("grant_type=client_credentials".getBytes("utf-8"));
		os.close();

		BufferedReader in = new BufferedReader(new InputStreamReader(hreq.getInputStream()));
		String inputLine;

		while ((inputLine = in.readLine()) != null) {
			tokenresponse.append(inputLine);
		}
		in.close();
//		System.out.println("TOKEN JSON :" + tokenresponse.toString());

		Gson gson = new Gson();
		token = gson.fromJson(tokenresponse.toString(), Token.class);

		/*
		 * Step 4 依照取得的Token開始查詢BFM
		 */
//		getBFM();
		String result = FlightInfoGet.getBFM(token, bfmsearch);

		System.out.println("getInfoService結束");
		return result;
	}
	
	@Autowired
	private AirlineCompareDAO dao;
	
	public String addCompanyCN(String bfmsearch) throws Exception {
		String result = this.getInfo(bfmsearch);
		System.out.println("addcompany開始");
		String result1 = result;
		int index = 0;
		Set<String> hashSet = new HashSet<String>();
		
		for (int i = 0; i < result.length() - 1; i++) {
			
			index = result.indexOf("OperatingAirline\":{\"Code\":\""); 
			if(index==-1) {
				break;
			}
			String code = result.substring(index + 27, index + 29);
			hashSet.add(code);
			result = result.substring(index+29);				
		}
		List<AirlineCompareBean> bean = dao.findByList(hashSet);
		
		for(AirlineCompareBean rebean :bean) {
			
			result1 = result1.replace("OperatingAirline\":{\"Code\":\""+rebean.getAirlineCode(),"OperatingAirline\":{\"Code\":\""+rebean.getAirlineCode()+"\",\"Company\":\""+rebean.getAirlineCompany());
			
		}
		
//		System.out.println(result1);
		return result1;
	}

}
