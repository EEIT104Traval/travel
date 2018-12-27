package model.hotel;

import java.util.List;

public interface _01HotelDAO {
	
	public abstract _01HotelBean findByPrimaryKey(Integer hotelNo);

	public abstract List<_01HotelBean> findAll();

	public abstract _01HotelBean create(_01HotelBean bean);

	public abstract _01HotelBean update(Integer hotelNo, String hotelName, String address, String phone, String email, Integer totalroom);

	public abstract boolean remove(Integer hotelNo);
	
}
