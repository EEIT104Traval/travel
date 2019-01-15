package model.hotel;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;


@Service
//@Transactional
public class HotelService {
	@Autowired
	private HotelDAO hotelDAO = null;
	
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
			result = hotelDAO.update(bean.getHotelNo(), bean.getHotelName(), bean.getCountry(), bean.getCity(), 
					bean.getAddress(), bean.getHotelTotalRooms(), bean.getStarRate(), bean.getPrice(), bean.getPic());
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
	
	
	public List<HotelBean> searchCountry(String country) {
		List<HotelBean> result = null;
		if (!StringUtils.isEmpty(country)) {
			List<HotelBean> tib = hotelDAO.searchByCountry(country);
			if (tib != null) {
				result = new ArrayList<HotelBean>();
				result.addAll(tib);
			}
		} else {
			result = hotelDAO.findAll();
		}
		return result;
	}
	
	public List<HotelBean> searchCity(String city) {
		List<HotelBean> result = null;
		if (!StringUtils.isEmpty(city)) {
			List<HotelBean> tib = hotelDAO.searchByCity(city);
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
	
	
//	public List<HotelBean> searchByCountry(HotelBean bean) {
//		return hotelDAO.searchByCountry(bean);
//		
//	}
}
