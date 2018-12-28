package model.hotel;

import java.util.List;

public interface _03RoomTypeDAO {

	public abstract _03RoomTypeBean findByPrimaryKey(Integer hotelNo);

	public abstract List<_03RoomTypeBean> findAll();

	public abstract _03RoomTypeBean create(_03RoomTypeBean bean);

	public abstract _03RoomTypeBean update(Integer hotelNo, Integer roomTypeNo, String roomType, java.util.Date saleDate, Integer price);

	public abstract boolean remove(Integer hotelNo);
	
}
