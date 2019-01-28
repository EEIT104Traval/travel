package model.rate;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoDAO;


@Service
@Transactional
public class RateNoticeService {
	@Autowired
    private RateNoticeDAO rateNoticeDAO = null;
	@Autowired
	private UserInfoDAO userInfoDAO = null;
	
	public RateNoticeBean create(RateNoticeBean bean) {
		RateNoticeBean result = null;
		if(bean != null) {
			result = rateNoticeDAO.create(bean);
		}	
		return result;
		
	}
	

	public List<RateNoticeBean> findAll(RateNoticeBean bean) {

		List<RateNoticeBean> result = rateNoticeDAO.findAll();

		return result;
	}
	
	public List<RateNoticeBean> findByPrimaryKey(String accountName) {
//		Map<String, List<?>> map = new HashMap<String, List<?>>();;
		List<RateNoticeBean> result = rateNoticeDAO.findByAccountName(accountName);
		
		return result;
		
	}
	
	public RateBean findByPrimaryKey1(String accountName) {
		RateBean result = rateNoticeDAO.findA(accountName);
//		System.out.println("service結果="+result);
		
		UserInfoBean ubean = userInfoDAO.findByPrimaryKey(accountName);
        try{
            String host ="smtp.gmail.com" ;
            String user = "sherrysherry92@gmail.com";
            String pass = "jxrkaepvctpmffcs";
            String to = "hot09681987@gmail.com";
            String from = "TimeToTravel";
            String subject = "Time To Travel - Information";
//            String messageText = "您的訂單明細";
            SimpleDateFormat sdFormat = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
            Date newdate = new Date();
            String sDate = sdFormat.format(newdate);
            
            String messageText =  "Hello "+accountName+":Your  ";
            boolean sessionDebug = false;
            Properties props = System.getProperties();

            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.required", "true");
            props.put("mail.smtp.ssl.trust", "smtp.gmail.com");

            java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
            Session mailSession = Session.getDefaultInstance(props, null);
            mailSession.setDebug(sessionDebug);
            Message msg = new MimeMessage(mailSession);
            msg.setFrom(new InternetAddress(from));
            InternetAddress[] address = {new InternetAddress(to)};
            msg.setRecipients(Message.RecipientType.TO, address);
            msg.setSubject(subject); msg.setSentDate(new Date());
            msg.setText(messageText);
            
            
            Transport transport=mailSession.getTransport("smtp");
            transport.connect(host, user, pass);
            transport.sendMessage(msg, msg.getAllRecipients());
            transport.close();
            System.out.println("message send successfully");
         }catch(Exception ex)
         {
             System.out.println(ex);
         }
		
		return result;
		
	}

}
