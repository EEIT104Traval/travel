package model.flight;

public interface AirportCompareDAO {

	public abstract AirportCompareBean findByPrimaryKey(String airportCode);

	public abstract AirportCompareBean create(AirportCompareBean bean);

	
}
