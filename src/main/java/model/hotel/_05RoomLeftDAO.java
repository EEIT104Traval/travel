package model.hotel;

import java.util.List;

public interface _05RoomLeftDAO {

public abstract _05RoomLeftBean findByPrimaryKey (Integer picNo);
	
	public abstract List<_05RoomLeftBean> findAll();
	
	public abstract _05RoomLeftBean create(_05RoomLeftBean bean);
	
	public abstract _05RoomLeftBean update(Integer picNo,Integer roomTypeNo,String picName,
			byte[] pic,String picDiscription);
	
	public abstract boolean remove(Integer picNo);
	
}
