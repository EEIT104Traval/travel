package model.flight;

import java.util.List;

public interface FlightOrderInfoDAO {

	public abstract FlightOrderInfoBean findByPrimaryKey(Integer flightOrderNO);

	public abstract List<FlightOrderInfoBean> findAll();

	public abstract FlightOrderInfoBean create(FlightOrderInfoBean bean);

	public abstract FlightOrderInfoBean update(Integer flightOrderNO,
			String username,String bookingCode,Integer phone,String email,
			Integer adultCount,Integer childCount,java.util.Date dealDate,String orderStatus);

	public abstract boolean remove(Integer flightOrderNO);

}