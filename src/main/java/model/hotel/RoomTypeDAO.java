package model.hotel;

import java.util.List;

public interface RoomTypeDAO {

	public abstract RoomTypeBean findByPrimaryKey(Integer roomTypeNo);

	public abstract List<RoomTypeBean> findAll();

	public abstract RoomTypeBean create(RoomTypeBean bean);

	public abstract RoomTypeBean update(Integer roomTypeNo, Integer hotelNo, String roomType, Integer accommodate, 
			Integer totalRooms, Integer price, String description, String content);

	public abstract boolean remove(Integer roomTypeNo);

	public abstract List<RoomTypeBean> findRoomType(Integer roomTypeNo);
	
}
