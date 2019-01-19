package model.flight;

import java.util.List;
import java.util.Set;

public interface AirlineCompareDAO {

	public abstract AirlineCompareBean findByPrimaryKey(String airlineCode);

	public abstract AirlineCompareBean create(AirlineCompareBean bean);
	
	public abstract List<AirlineCompareBean> findByList(Set<String> code);

}
