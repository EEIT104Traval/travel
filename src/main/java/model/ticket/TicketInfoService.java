package model.ticket;

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
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoDAO;
@Service
@Transactional
public class TicketInfoService {

	@Autowired
	private TicketInfoDAO ticketInfoDAO = null;
	@Autowired
	private TicketOrderInfoDAO ticketOrderInfoDAO = null;
	@Autowired
	private UserInfoDAO userInfoDAO = null;


	
	public List<TicketInfoBean> select() {
			
		List<TicketInfoBean> result = ticketInfoDAO.findAllUp();
		if(result!=null) {
			return result;
		}
		return null;

	}
	
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
	public TicketInfoBean findByPrimaryKey(Integer ticketNo) {
		TicketInfoBean tib = ticketInfoDAO.findByPrimaryKey(ticketNo);
		return tib;
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
	
	public void down(TicketInfoBean bean) {
		TicketInfoBean b = ticketInfoDAO.findByPrimaryKey(bean.getTicketNo());
		if (b != null) {
			 b.setUpdown(1);
			 ticketInfoDAO.update(b);
		}
	}
	
	public void up(TicketInfoBean bean) {
		TicketInfoBean b = ticketInfoDAO.findByPrimaryKey(bean.getTicketNo());
		if (b != null) {
			 b.setUpdown(0);
			 ticketInfoDAO.update(b);
		}
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
			java.util.Date date = new java.util.Date();
			System.out.println(date);
			TicketOrderInfoBean TOI = ticketOrderInfoDAO.create(bean);
			TOI.setAccountName(accountName);
			TOI.setTicketNo(ticketNo);
			TOI.setOrderDate(date);
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
	
	public List<TicketInfoBean> searchCountry(String country) {
		  List<TicketInfoBean> result = null;
		if (!StringUtils.isEmpty(country)) {
			List<TicketInfoBean> tib = ticketInfoDAO.searchByCountry(country);
			if (tib != null) {
				result = new ArrayList<TicketInfoBean>();
				for(TicketInfoBean x: tib) {
					if(x.getUpdown() == 0) {
						result.add(x);
					}
				}
			}
		} else {
			result = ticketInfoDAO.findAllUp();
		}
		return result;
	}
}
