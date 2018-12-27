package model.hotel;

import java.util.List;

public interface _03RoomTypeDAO {

	public abstract _03RoomTypeBean findByPrimaryKey(Integer serialNo);

	public abstract List<_03RoomTypeBean> findAll();

	public abstract _03RoomTypeBean create(_03RoomTypeBean bean);

	public abstract _03RoomTypeBean update(Integer serialNo,Integer hotelNo,Integer roomLeft,Integer notForSale);

	public abstract boolean remove(Integer serialNo);
}
