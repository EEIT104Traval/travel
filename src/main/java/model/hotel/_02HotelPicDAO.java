package model.hotel;

import java.util.List;

public interface _02HotelPicDAO {

	public abstract _02HotelPicBean findByPrimaryKey(Integer hotelNo);

	public abstract List<_02HotelPicBean> findAll();

	public abstract _02HotelPicBean create(_02HotelPicBean bean);

	public abstract _02HotelPicBean update(Integer hotelNo, Integer roomTypeNo, String roomType, java.util.Date saleDate, Integer price);

	public abstract boolean remove(Integer hotelNo);
	
}
