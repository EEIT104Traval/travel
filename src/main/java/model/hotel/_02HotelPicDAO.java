package model.hotel;

import java.util.List;

public interface _02HotelPicDAO {

	public abstract _02HotelPicBean findByPrimaryKey(Integer picNo);

	public abstract List<_02HotelPicBean> findAll();

	public abstract _02HotelPicBean create(_02HotelPicBean bean);

	public abstract _02HotelPicBean update(Integer picNo, Integer hotelNo, String picName, String picDiscription, byte[] pic);

	public abstract boolean remove(Integer picNo);
	
	
}
