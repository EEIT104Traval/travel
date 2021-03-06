package model.hotel;

import java.util.List;

public interface HotelOrderDetailsDAO {

	public abstract HotelOrderDetailsBean findByPrimaryKey(Integer orderNo);

	public abstract List<HotelOrderDetailsBean> findAll();

	public abstract HotelOrderDetailsBean create(HotelOrderDetailsBean bean);

	public abstract HotelOrderDetailsBean update(Integer orderNo, Integer hotelNo, String accountName,
			java.util.Date createDate, java.util.Date updateDate, String bookingPerson, String hotelName, String phone,
			java.util.Date bookingDate, java.util.Date checkIn, java.util.Date checkOut, String roomType,
			Integer roomPrice, Integer stayNights, Integer totalPrice, String info);

	public abstract boolean remove(Integer orderNo);
	
	
	
	//查詢訂單-----------------後台寫的
	public abstract List<HotelOrderDetailsBean> findOrderaccountName(String accountName);
}
