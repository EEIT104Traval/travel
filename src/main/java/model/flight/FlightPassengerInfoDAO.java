package model.flight;

import java.util.List;

public interface FlightPassengerInfoDAO {

	public abstract FlightPassengerInfoBean findByPrimaryKey(Integer serialNO);

	public abstract List<FlightPassengerInfoBean> findAll();

	public abstract FlightPassengerInfoBean create(FlightPassengerInfoBean bean);

}
