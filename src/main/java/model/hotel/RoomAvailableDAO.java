package model.hotel;

import java.util.List;

public interface RoomAvailableDAO {

	public abstract RoomAvailableBean findByPrimaryKey(Integer serialNo);

	public abstract List<RoomAvailableBean> findAll();

	public abstract RoomAvailableBean create(RoomAvailableBean bean);

	public abstract RoomAvailableBean update(Integer serialNo, Integer roomTypeNo, java.util.Date date, Integer totalRooms, Integer sale, Integer available, Integer notForSale);

	public abstract boolean remove(Integer serialNo);
	
	public abstract List<RoomAvailableBean> searchByDate(java.util.Date date);
	
	public abstract List<RoomAvailableBean> findRoomByDate(List<RoomTypeBean> list);
	
}
