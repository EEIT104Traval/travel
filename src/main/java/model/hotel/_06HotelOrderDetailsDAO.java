package model.hotel;

import java.util.List;

public interface _06HotelOrderDetailsDAO {

	
public abstract _06HotelOrderDetailsBean findByPrimaryKey (Integer orderNo);
	
	public abstract List<_06HotelOrderDetailsBean> findAll();
	
	public abstract _06HotelOrderDetailsBean create(_06HotelOrderDetailsBean bean);
	
	public abstract _06HotelOrderDetailsBean update(Integer orderNo,Integer hotelNo,
			String hotelName,String username,String bookingPerson,String phone,
			java.util.Date bookingDate,java.util.Date checkIn,java.util.Date checkOut,
			String roomType,Integer totalprice,String info);
	
	public abstract boolean remove(Integer orderNo);
}
