package model.flight;

import java.util.List;

public interface AirportCompareDAO {

	public abstract AirportCompareBean findByPrimaryKey(String airportCode);

	public abstract AirportCompareBean create(AirportCompareBean bean);

	public abstract List<AirportCompareBean> findAll();
	
	public abstract List<AirportCompareBean> findByAirportName(String AirportName);
	
}
