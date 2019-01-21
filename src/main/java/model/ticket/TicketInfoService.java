package model.ticket;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoDAO;

@Service
public class TicketInfoService {

	@Autowired
	private TicketInfoDAO ticketInfoDAO = null;
	@Autowired
	private TicketOrderInfoDAO ticketOrderInfoDAO = null;
	@Autowired
	private UserInfoDAO userInfoDAO = null;
//	@Autowired
//	private UserInfoBean userInfoBean = null;
	
	public SimpleDateFormat sdFormat = new SimpleDateFormat("yyyy/MM/dd");

	
	public List<TicketInfoBean> select(TicketInfoBean bean) {
		List<TicketInfoBean> result = null;
		
		if (bean != null && bean.getTicketNo() != 0) {
			TicketInfoBean tib = ticketInfoDAO.findByPrimaryKey(bean.getTicketNo());
			if (tib != null) {
				result = new ArrayList<TicketInfoBean>();
				result.add(tib);
			} else {
				result = ticketInfoDAO.findAll();
			}
		}
		return result;
	}

	public List<TicketInfoBean> findAll(){
		List<TicketInfoBean> result = ticketInfoDAO.findAll();
		return result;
	}
	
	public TicketInfoBean insert(TicketInfoBean bean) {
		TicketInfoBean result = null;
		if (bean != null) {
			result = ticketInfoDAO.create(bean);
		}
		return result;
	}

	public TicketInfoBean update(TicketInfoBean bean) {
		TicketInfoBean result = null;
		if (bean != null) {
			result = ticketInfoDAO.update(bean);
		}
		return result;
	}
//	public TicketInfoBean update(TicketInfoBean bean) {
//		TicketInfoBean result = null;
//		if (bean != null) {
//			result = ticketInfoDAO.update(bean.getTicketNo(), bean.getTicketName(), bean.getValidity(),
//					bean.getAdultTicketPrice(), bean.getChildTicketPrice(), bean.getAdultTicketSellQ(),
//					bean.getChildTicketSellQ(), bean.getAdultTicketSelledQ(), bean.getChildTicketSelledQ(),
//					bean.getCountry(), bean.getCategory(), bean.getProductFeatures(), bean.getTicketPicture(),
//					bean.getTicketDescription(), bean.getTraffic_information(), bean.getSpecial_restrictions(),
//					bean.getGoogleAddressOrName());
//		}
//		return result;
//	}

	
	public boolean delete(TicketInfoBean bean) {
		boolean result = false;
		if (bean != null) {
			result = ticketInfoDAO.remove(bean.getTicketNo());
		}
		return result;
	}

	public boolean qupdate(String accountName, Integer ticketNo, Integer adultTicketSellQ, Integer adultTicketPrice)
			throws ParseException {

		TicketOrderInfoBean bean = new TicketOrderInfoBean();
		if (ticketNo != null) {
			TicketInfoBean TI = ticketInfoDAO.findByPrimaryKey(ticketNo);
			Integer Q = TI.getAdultTicketSellQ();
			Integer SaveQ = Q - adultTicketSellQ;
			TI.setAdultTicketSellQ(SaveQ);
			TI.setAdultTicketSelledQ(TI.getAdultTicketSelledQ() + adultTicketSellQ);
			ticketInfoDAO.qupdate(TI);
			// ------------------(↑購買更改庫存數量 )(↓購買更改訂單表格)---------------------------
			TicketOrderInfoBean TOI = ticketOrderInfoDAO.create(bean);
			TOI.setAccountName(accountName);
			TOI.setTicketNo(ticketNo);
			Date date = new Date();
			String strDate = sdFormat.format(date);
			Date TD = sdFormat.parse(strDate);
			TOI.setOrderDate(TD);
			TOI.setAdultTicketCount(adultTicketSellQ);
			Integer TT = adultTicketSellQ * adultTicketPrice;
			TOI.setTotalPrice(TT);
			// ------------------(↑購買更改訂單表格 )(↓寫信件給客戶)--------------------------------------------
			UserInfoBean ubean = userInfoDAO.findByPrimaryKey(accountName);
			 try{
		            String host ="smtp.gmail.com" ;
		            String user = "sherrysherry92@gmail.com";
		            String pass = "jxrkaepvctpmffcs";
		            String to = ubean.getEmail();
//		            String to = "reese32@hotmail.com.tw";
		            String from = "sherry";
		            String subject = "Time To Travel";
		            SimpleDateFormat sdFormat = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		            Date newdate = new Date();
		            String sDate = sdFormat.format(newdate);
//-------------------------信件內容格式------------------------------	
		            
		            String messageText = "親愛的"+accountName+"你好，你於"+sDate+"購入了"+ticketNo+"："+adultTicketSellQ+"張，共"+(adultTicketSellQ*adultTicketPrice)+"元";
		            
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
			return true;
		} else {
			return false;
		}
	}

	public  String DLticketInfo(String path) throws IOException{
		String x = ticketInfoDAO.DLticketInfo(path);
		
		return x;
	}
	
	
	public  String UPticketInfo(String path) throws IOException{
		String x = ticketInfoDAO.UPticketInfo(path);
		
		return x;
	}	
	
	public List<TicketInfoBean> searchCountry(String country) {
		List<TicketInfoBean> result = null;
		if (!StringUtils.isEmpty(country)) {
			List<TicketInfoBean> tib = ticketInfoDAO.searchByCountry(country);
			if (tib != null) {
				result = new ArrayList<TicketInfoBean>();
				result.addAll(tib);
			}
		} else {
			result = ticketInfoDAO.findAll();
		}
		return result;
	}
	
	public List<TicketInfoBean> searchByTicketName(Integer ticketNo) {
		List<TicketInfoBean> result = null;
		if (!StringUtils.isEmpty(ticketNo)) {
			List<TicketInfoBean> tib = ticketInfoDAO.searchByTicketName(ticketNo);
			if (tib != null) {
				result = new ArrayList<TicketInfoBean>();
				result.addAll(tib);
			}
		} else {
			result = ticketInfoDAO.findAll();
		}
		return result;	
	}
	
}
