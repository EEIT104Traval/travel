package model.hotel;

import java.util.List;

public interface RoomAvailableDAO {

	public abstract RoomAvailableBean findByPrimaryKey(Integer serialNo);

	public abstract List<RoomAvailableBean> findAll();

	public abstract RoomAvailableBean create(RoomAvailableBean bean);

	public abstract RoomAvailableBean update(RoomAvailableBean bean);

	public abstract boolean remove(Integer serialNo);
	
	public abstract List<RoomAvailableBean> searchByDate(java.util.Date date);
	
	public abstract List<RoomAvailableBean> findRoomByDate(List<RoomTypeBean> list);
	
	public abstract RoomAvailableBean foundDate(java.util.Date date);
}
