package model.hotel;

import java.util.List;

public interface _05RoomLeftDAO {

	public abstract _05RoomLeftBean findByPrimaryKey(Integer serialNo);

	public abstract List<_05RoomLeftBean> findAll();

	public abstract _05RoomLeftBean create(_05RoomLeftBean bean);

	public abstract _05RoomLeftBean update(Integer serialNo, Integer hotelNo, Integer roomLeft, Integer notForSale);

	public abstract boolean remove(Integer serialNo);
	
}
