package model.hotel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service

public class HotelOrderDetailsService {
	
@Autowired
private HotelOrderDetailsDAO hotelOrderDetailsDAO = null;

	//查詢訂單------------------------後台寫的---------------------------
	public List<HotelOrderDetailsBean> foundOrderaccountName(String accountName) {

		List<HotelOrderDetailsBean> result = null;
		
		result = hotelOrderDetailsDAO.findOrderaccountName(accountName);

		return result;
	}
}
