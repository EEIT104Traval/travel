package model.hotel;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
@Transactional
public class HotelService {
	@Autowired
	private HotelDAO hotelDAO;
	
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
					bean.getAddress(), bean.getPhone(), bean.getEmail(), bean.getHotelTotalRooms(), bean.getPhone());
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
	
	public List<HotelBean> searchByCountry(HotelBean bean) {
		return hotelDAO.searchByCountry(bean);
		
	}
}
