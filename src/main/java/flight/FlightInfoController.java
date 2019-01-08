package flight;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Base64;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;

import controller.test.flight.Token;
import model.flight.FlightInfoService;

@Controller
public class FlightInfoController {

	@Autowired
	private  Token token;
	@ResponseBody
	@RequestMapping("/FlightInfo")
	public String method() {
		System.out.println("Controller方法開始");
		/*
		 * Step 1
		 * 取得ClientID
		 * 
		 */
		String ClientID = "V1:987632:A2U8:AA";// "V1:d6ztddyuw791ocj6:DEVCENTER:EXT";
		String Password = "SDY2KUL";// "rDd0nE8G";

		/*
		 * Step 2
		 * 轉換為Base64String
		 * 
		 */
		try {
			String Base_Compose;

				String Base_ClientID = Base64.getEncoder().encodeToString(ClientID.getBytes("utf-8"));
				String Base_Password = Base64.getEncoder().encodeToString(Password.getBytes("utf-8"));
				Base_Compose = Base64.getEncoder()
						.encodeToString((Base_ClientID + ":" + Base_Password).getBytes("utf-8"));

			/*
			 * Step 3
			 * 取得AccessToken
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
			System.out.println("TOKEN JSON :" + tokenresponse.toString());

			Gson gson = new Gson();
			token = gson.fromJson(tokenresponse.toString(), Token.class);

			/*
			 * Step 4
			 * 依照取得的Token開始查詢BFM
			 */
//		getBFM();
			FlightInfoService service = new FlightInfoService();
			String s = service.getBFM(token);
			System.out.println("傳回結果="+s);
		} catch (JsonSyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return "";
	}
	
	
}
