package model.flight;

import java.util.List;

public interface FlightDAO {

	public abstract FlightOrderInfoBean findByPrimaryKey(int flightOrderNO);

	public abstract List<FlightOrderInfoBean> findAll();

	public abstract FlightOrderInfoBean create(FlightOrderInfoBean bean);

	public abstract FlightOrderInfoBean update(String name, double price,
			java.util.Date make, int expire, int id);

	public abstract boolean remove(int flightOrderNO);

}