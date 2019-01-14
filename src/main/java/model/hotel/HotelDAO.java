package model.hotel;

import java.util.List;

public interface HotelDAO {
	
	public abstract HotelBean findByPrimaryKey(Integer hotelNo);

	public abstract List<HotelBean> findAll();

	public abstract HotelBean create(HotelBean bean);

	public abstract HotelBean update(Integer hotelNo,  String hotelName, String country, String city, String address, 
			Integer hotelTotalRooms, String starRate, String price, String pic);

	public abstract boolean remove(Integer hotelNo);

	public abstract List<HotelBean> searchByCountry(String country);

	public abstract List<HotelBean> searchByCity(String city);
	
}

