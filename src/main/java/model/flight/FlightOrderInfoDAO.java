package model.flight;

import java.util.List;

public interface FlightOrderInfoDAO {

	public abstract FlightOrderInfoBean findByPrimaryKey(Integer flightOrderNO);

	public abstract List<FlightOrderInfoBean> findAll();

	public abstract FlightOrderInfoBean create(FlightOrderInfoBean bean);

	public abstract FlightOrderInfoBean update(FlightOrderInfoBean bean);

	public abstract boolean remove(Integer flightOrderNO);

}