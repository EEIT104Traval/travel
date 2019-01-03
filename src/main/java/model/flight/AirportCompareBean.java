package model.flight;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="AirportCompareTable")
public class AirportCompareBean {
	@Id
	private String AirportCode;
	private String AirportName;
	public String getAirportCode() {
		return AirportCode;
	}
	public void setAirportCode(String airportCode) {
		AirportCode = airportCode;
	}
	public String getAirportName() {
		return AirportName;
	}
	public void setAirportName(String airportName) {
		AirportName = airportName;
	}
	@Override
	public String toString() {
		return "AirportCompareBean [AirportCode=" + AirportCode + ", AirportName=" + AirportName + "]";
	}
	
	
	
	
}
