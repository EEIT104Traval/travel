package model.hotel;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

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
//		HotelOrderDetailsBean bean = new HotelOrderDetailsBean();
		if (hotelNo != null) {
			HotelBean TI = hotelDAO.findByPrimaryKey(hotelNo);
			RoomTypeBean Q = roomTypeDAO.findByPrimaryKey(roomTypeNo);
		//	RoomAvailableBean R = roomAvailableDAO.foundDate(checkIn);			
//			新增訂單
			HotelOrderDetailsBean Order = new HotelOrderDetailsBean();
		
			Order.setHotelNo(hotelNo);
			Order.setAccountName(accountName);
            Date newdate = new Date();
			Order.setCreateDate(newdate);
			Order.setBookingPerson(bookingPerson);
			Order.setHotelName(TI.getHotelNameCH());
			Order.setPhone(phone);
			Order.setCheckIn(checkIn);
			Order.setCheckOut(checkOut);
			Order.setRoomType(Q.getRoomType());
			Order.setRoomPrice(Q.getPrice());
			Integer day;
	        java.util.Date beginDate = checkIn;
	        java.util.Date endDate = checkOut;
            day=(int) ((endDate.getTime()-beginDate.getTime())/(24*60*60*1000));    
			Order.setStayNights(day);
			Order.setTotalPrice((Q.getPrice()*day));
			hotelOrderDetailsDAO.create(Order);
			System.out.println("===========");
			System.out.println(Order);
			System.out.println(day);
//			庫存減少		
			for (int i = 0 ; i <= day ; i++) {	
				Long x = (checkIn.getTime()+i*86400000);
				java.sql.Date checkIn1 = new java.sql.Date(x);
				RoomAvailableBean room =roomAvailableDAO.foundDate(checkIn1);
				room.setSale((room.getSale()-1));
				room.setAvailable((room.getAvailable()+1));
				roomAvailableDAO.update(room);			
			
			}
			return true;
		}
		return false;
	}	
}
