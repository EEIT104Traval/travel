package model.hotel;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class HotelOrderDetailsService {

	@Autowired
	private HotelOrderDetailsDAO hotelOrderDetailsDAO = null;

	// 查詢訂單------------------------後台寫的---------------------------
	public List<HotelOrderDetailsBean> foundOrderaccountName(String accountName) {

		List<HotelOrderDetailsBean> result = null;

		result = hotelOrderDetailsDAO.findOrderaccountName(accountName);

		return result;
	}

	// ------------------------ 日期天數相減 ---------------------------

	public Integer datemiuns(java.util.Date checkIn, java.util.Date checkOut) throws ParseException {

		Integer day;
		java.util.Date beginDate = checkIn;
		java.util.Date endDate = checkOut;
		day = (int) ((endDate.getTime() - beginDate.getTime()) / (24 * 60 * 60 * 1000));

		System.out.println(day);

		return day;
	}

}
