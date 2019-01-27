package model.hotel;

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
import org.springframework.util.SocketUtils;
import org.springframework.util.StringUtils;

import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoDAO;

@Service
@Transactional
public class HotelService {
	@Autowired
	private HotelDAO hotelDAO = null;
	@Autowired
	private RoomTypeDAO roomTypeDAO = null;
	@Autowired
	private RoomAvailableDAO roomAvailableDAO = null;
	@Autowired
	private HotelOrderDetailsDAO hotelOrderDetailsDAO = null;
	@Autowired
	private UserInfoDAO userInfoDAO;
	
	public List<HotelBean> select(HotelBean bean) {
		List<HotelBean> result = null;
		if(bean!=null && bean.getHotelNo()!=0) {
			HotelBean temp = hotelDAO.findByPrimaryKey(bean.getHotelNo());
			if(temp!=null) {
				result = new ArrayList<HotelBean>();
				result.add(temp);
			}
		} else {
			result = hotelDAO.findAll(); 
		}
		return result;
	}
	
	public HotelBean getOne(Integer id) {
		return  hotelDAO.findByPrimaryKey(id);
	}
	
	
	public HotelBean insert(HotelBean bean) {
		HotelBean result = null;
		if(bean!=null) {
			result = hotelDAO.create(bean);
		}
		return result;
	}
	public HotelBean update(HotelBean bean) {
		HotelBean result = null;
		if(bean!=null) {
			result = hotelDAO.update(bean.getHotelNo(), bean.getHotelNameCH(), bean.getCountryCH(), bean.getCityCH(), 
					bean.getHotelNameEN(), bean.getCountryEN(), bean.getCityEN(), bean.getAddress(), bean.getHotelTotalRooms(), 
					bean.getStar(), bean.getStarRate(), bean.getPrice(), bean.getPic());
					}
		return result;
	}
	public boolean delete(HotelBean bean) {
		boolean result = false;
		if(bean!=null) {
			result = hotelDAO.remove(bean.getHotelNo());
		}
		return result;
	}
	
	
	public List<HotelBean> searchCountry(String countryCH) {
		List<HotelBean> result = null;
		if (!StringUtils.isEmpty(countryCH)) {
			List<HotelBean> tib = hotelDAO.searchByCountry(countryCH);
			if (tib != null) {
				result = new ArrayList<HotelBean>();
				result.addAll(tib);
			}
		} else {
			result = hotelDAO.findAll();
		}
		return result;
	}
	
	public List<HotelBean> searchCity(String cityCH) {
		List<HotelBean> result = null;
		if (!StringUtils.isEmpty(cityCH)) {
			List<HotelBean> tib = hotelDAO.searchByCity(cityCH);
			if (tib != null) {
				result = new ArrayList<HotelBean>();
				result.addAll(tib);
			}
		} else {
			result = hotelDAO.findAll();
		}
		return result;
	}
	
	public List<HotelBean> searchAll() {
//		List<HotelBean> result = hotelDAO.findAll();
//		return result;
		return hotelDAO.findAll();
	}
	
//-----------------------------------------訂購房間----------------------------------------------------------
	
	public boolean qupdate(String accountName, Integer hotelNo, String bookingPerson, String phone, Integer roomTypeNo,
			java.util.Date checkIn, java.util.Date checkOut)
			throws ParseException {
		if (hotelNo != null) {
			HotelBean HB = hotelDAO.findByPrimaryKey(hotelNo);
			RoomTypeBean RTB = roomTypeDAO.findByPrimaryKey(roomTypeNo);
//			HotelOrderDetailsBean bean = new HotelOrderDetailsBean();
//			RoomAvailableBean R = roomAvailableDAO.foundDate(checkIn);			
//			新增訂單
			HotelOrderDetailsBean Order = new HotelOrderDetailsBean();
		
			Order.setHotelNo(hotelNo);
			Order.setAccountName(accountName);
            Date newdate = new Date();
			Order.setCreateDate(newdate);
			Order.setBookingPerson(bookingPerson);
			Order.setHotelName(HB.getHotelNameCH());
			Order.setPhone(phone);
			Order.setCheckIn(checkIn);
			Order.setCheckOut(checkOut);
			Order.setRoomType(RTB.getRoomType());
			Order.setRoomPrice(RTB.getPrice());
			Integer day;
	        java.util.Date beginDate = checkIn;
	        java.util.Date endDate = checkOut;
            day=(int) ((endDate.getTime()-beginDate.getTime())/(24*60*60*1000));    
			Order.setStayNights(day);
			Order.setTotalPrice((RTB.getPrice()*day));
			hotelOrderDetailsDAO.create(Order);
			System.out.println("===========");
			System.out.println(Order);
			System.out.println(day);
//			庫存減少		
			for (int i = 0 ; i < day ; i++) {	
				Long x = (checkIn.getTime()+i*86400000);
				java.sql.Date checkIn1 = new java.sql.Date(x);
				RoomAvailableBean room =roomAvailableDAO.foundDate(checkIn1);
				room.setSale((room.getSale()+1));
				room.setAvailable((room.getAvailable()-1));
				roomAvailableDAO.update(room);			
			}
		}
		// ------------------(↑購買更改訂單表格 )(↓寫信件給客戶)--------------------------------------------	
//		UserInfoBean ubean = userInfoDAO.findByPrimaryKey(accountName);
		HotelBean HB = hotelDAO.findByPrimaryKey(hotelNo);
		RoomTypeBean RTB = roomTypeDAO.findByPrimaryKey(roomTypeNo);
		HotelOrderDetailsBean Order = new HotelOrderDetailsBean();
		
		Integer day;
        java.util.Date beginDate = checkIn;
        java.util.Date endDate = checkOut;
        day=(int) ((endDate.getTime()-beginDate.getTime())/(24*60*60*1000));    
		Order.setStayNights(day);
		Order.setTotalPrice((RTB.getPrice()*day));
//		
		  SimpleDateFormat sdFormat0 = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
	      Date newdate = new Date();
	      String ch = sdFormat0.format(newdate);
		  
		  SimpleDateFormat sdFormat = new SimpleDateFormat("yyyy/MM/dd");
          Date newdatebegin = checkIn;
          String begin = sdFormat.format(newdatebegin);
          Date newdateend = checkOut;
          String end = sdFormat.format(newdateend);
  
          
          
        try{
            String host ="smtp.gmail.com" ;
            String user = "sherrysherry92@gmail.com";
            String pass = "jxrkaepvctpmffcs";
            String to = "sherryyang92@gmail.com";
            String from = "TimeToTravel";
            String subject = "Time To Travel - 訂購明細";
//            String messageText = "您的訂單明細";
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
//            msg.setText(messageText);
            String message = "<div style='font-family: Microsoft JhengHei'>"
            +"<h1>Time To Travel</h1>"
            +"<p>Hello！" + accountName + "，</p>"
            +"<p>我們已收到您的訂單 #20190202001</p>"
            +"<br>"
            +"<b>訂單明細</b>"
            +"<p>訂單編號：#19010922153JV4S</p>"
            +"<p>訂單日期：" + ch + "</p>"
            +"<p>訂購人：" + bookingPerson + "</p>"
            +"<br>"
            +"<p>飯店名稱：" + HB.getHotelNameCH() + HB.getHotelNameEN() + " - " + RTB.getRoomType() + "</p>"
            +"<img alt='" + RTB.getRoomType() + "'" 
            + "src='" + HB.getPic() + "'"
            + "style='width: auto;'"+ "'/>'"
            +"<p>地址：" + HB.getAddress() +"</p>"
            +"<p>日期：" + begin + " ~ " + end + "(共" + day + "晚)</p>"
            +"<p>總金額：NT$ "+ (RTB.getPrice()*day) +"</p>"
            +"<hr>"
            +"<p>感謝您的訂購！</p>"
            +"<a href='http://localhost:8080/Travel/voyage/index.jsp'>修改訂單</a>"
            +"</div>"
            +"<hr>"
            +"<div style='text-align: center'>"
            +"<p>Copyright © 1999-2019 Time To Travel All rights reserved<p>"
            +"</div>"
            +"<div style=\"color:red;\">BRIDGEYE</div>";
            msg.setContent(message, "text/html; charset=utf-8");
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
	}
}
