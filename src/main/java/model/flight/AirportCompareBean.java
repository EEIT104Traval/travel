package model.flight;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="AirportCompareTable")
public class AirportCompareBean {
	@Id
	private String AirportCode;
	public String getAirportCode() {
		return AirportCode;
	}
	public void setAirportCode(String airportCode) {
		AirportCode = airportCode;
	}
	public String getAirlineName() {
		return AirlineName;
	}
	public void setAirlineName(String airlineName) {
		AirlineName = airlineName;
	}
	private String AirlineName;
	@Override
	public String toString() {
		return "AirportCompareBean [AirportCode=" + AirportCode + ", AirlineName=" + AirlineName + "]";
	}
	
	
}
