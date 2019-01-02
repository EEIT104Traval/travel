package model.hotel;

import java.util.List;

public interface RoomTypeDAO {

	public abstract RoomTypeBean findByPrimaryKey(Integer roomTypeNo);

	public abstract List<RoomTypeBean> findAll();

	public abstract RoomTypeBean create(RoomTypeBean bean);

	public abstract RoomTypeBean update(Integer roomTypeNo, Integer hotelNo, String roomType, Integer totalRooms, Integer price);

	public abstract boolean remove(Integer roomTypeNo);
	
}
