package model.flight;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.zip.GZIPInputStream;

public class FlightInfoGet{

	
	public static String getBFM(Token token,String bfmsearch) throws Exception {

		// https: //api.sabre.com正式環境
		// https: //api.test.sabre.com測試環境
		URL url = new URL("https://api.sabre.com/v3.4.0/shop/flights?mode=live");
		HttpURLConnection hreq = (HttpURLConnection) url.openConnection();
		hreq.setRequestMethod("POST");
		hreq.setRequestProperty("Content-Type", "application/json");
		hreq.setRequestProperty("Accept-Encoding", "gzip");
		hreq.setRequestProperty("Authorization", "Bearer " + token.getAccessToken());
		hreq.setDoOutput(true); 
		
		OutputStream os = hreq.getOutputStream();
		os.write(bfmsearch.getBytes("utf-8"));
		os.close();
		
		GZIPInputStream zipBFMinformation = null;
		zipBFMinformation = new GZIPInputStream(hreq.getInputStream());
		InputStreamReader resBFM = new InputStreamReader(zipBFMinformation,"UTF-8");
		BufferedReader in = new BufferedReader(resBFM);
		
		String inputLine;
		StringBuffer response = new StringBuffer();

		while ((inputLine = in.readLine()) != null) {
			response.append(inputLine);
		}
		in.close();
//		System.out.println("BFM ANSWER :" + response.toString());
		return response.toString();
	
	}
	
	
	
	
}
