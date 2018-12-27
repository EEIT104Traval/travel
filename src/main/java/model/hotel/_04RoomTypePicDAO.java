package model.hotel;

import java.util.List;

public interface _04RoomTypePicDAO {

	public abstract _04RoomTypePicBean findByPrimaryKey (Integer orderNo);
	
	public abstract List<_04RoomTypePicBean> findAll();
	
	public abstract _04RoomTypePicBean create(_04RoomTypePicBean bean);
	
	public abstract _04RoomTypePicBean update(Integer orderNo,Integer hotelNo,
			String hotelName,String username,String bookingPerson,Integer phone,
			java.util.Date bookingDate,java.util.Date checkIn,java.util.Date checkOut,
			String roomType,Integer totalprice,String info);
	
	public abstract boolean remove(Integer orderNo);
}
