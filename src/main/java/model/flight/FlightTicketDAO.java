package model.flight;

import java.util.List;

public interface FlightTicketDAO {
	
	public abstract FlightTicketBean findByPrimaryKey(Integer serial);

	public abstract List<FlightTicketBean> findAll();

	public abstract FlightTicketBean create(FlightTicketBean bean);
	
	
	
}
