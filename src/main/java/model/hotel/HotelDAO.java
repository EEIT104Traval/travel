package model.hotel;

import java.util.List;

public interface HotelDAO {
	
	public abstract HotelBean findByPrimaryKey(Integer hotelNo);

	public abstract List<HotelBean> findAll();

	public abstract HotelBean create(HotelBean bean);

	public abstract HotelBean update(Integer hotelNo, String hotelNameCH, String hotelNameEN, String countryCH, String countryEN, String cityCH, 
			String cityEN, String address, Integer hotelTotalRooms, Integer star, String starRate, String price, String pic);

	public abstract boolean remove(Integer hotelNo);

	public abstract List<HotelBean> searchByCountry(String countryCH);

	public abstract List<HotelBean> searchByCity(String cityCH);
	
}

