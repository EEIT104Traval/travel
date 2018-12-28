package model.hotel;

import java.util.List;

public interface _04RoomTypePicDAO {

	public abstract _04RoomTypePicBean findByPrimaryKey(Integer picNo);

	public abstract List<_04RoomTypePicBean> findAll();

	public abstract _04RoomTypePicBean create(_04RoomTypePicBean bean);

	public abstract _04RoomTypePicBean update(Integer picNo, Integer roomTypeNo, String picName, String pic, String picDiscription);

	public abstract boolean remove(Integer picNo);
	
}
