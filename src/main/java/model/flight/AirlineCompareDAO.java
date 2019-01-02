package model.flight;

public interface AirlineCompareDAO {

	public abstract AirlineCompareBean findByPrimaryKey(String airlineCode);

	public abstract AirlineCompareBean create(AirlineCompareBean bean);

}
