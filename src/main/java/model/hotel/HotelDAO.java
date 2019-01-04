package model.hotel;

import java.util.List;

public interface HotelDAO {
	
	public abstract HotelBean findByPrimaryKey(Integer hotelNo);

	public abstract List<HotelBean> findAll();

	public abstract HotelBean create(HotelBean bean);

	public abstract HotelBean update(Integer hotelNo,  String hotelName, String address, String phone, String email, Integer hotelTotalRooms, String pic);

	public abstract boolean remove(Integer hotelNo);
	
}
