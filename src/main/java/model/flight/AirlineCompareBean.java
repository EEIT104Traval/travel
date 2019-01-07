package model.flight;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "AirlineCompareTable")
public class AirlineCompareBean {
	@Id
	private String airlineCode;
	private String airlineCompany;	
	private String airlineLogo;

	public String getAirlineCode() {
		return airlineCode;
	}

	public void setAirlineCode(String airlineCode) {
		this.airlineCode = airlineCode;
	}

	public String getAirlineCompany() {
		return airlineCompany;
	}

	public void setAirlineCompany(String airlineCompany) {
		this.airlineCompany = airlineCompany;
	}

	public String getAirlineLogo() {
		return airlineLogo;
	}

	public void setAirlineLogo(String airlineLogo) {
		this.airlineLogo = airlineLogo;
	}



	@Override
	public String toString() {
		return "AirlineCompareBean [airlineCode=" + airlineCode + ", airlineCompany=" + airlineCompany
				+ ", airlineLogo=" + airlineLogo + "]";
	}

}
