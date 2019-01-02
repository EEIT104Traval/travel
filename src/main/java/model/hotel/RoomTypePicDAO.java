package model.hotel;

import java.util.List;

public interface RoomTypePicDAO {

	public abstract RoomTypePicBean findByPrimaryKey(Integer picNo);

	public abstract List<RoomTypePicBean> findAll();

	public abstract RoomTypePicBean create(RoomTypePicBean bean);

	public abstract RoomTypePicBean update(Integer picNo, Integer roomTypeNo, String pic);

	public abstract boolean remove(Integer picNo);
	
}
