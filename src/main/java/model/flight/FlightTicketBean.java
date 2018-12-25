package model.flight;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="FlightTicket")
public class FlightTicketBean {
	@Id
	private String flightNO;
	private String airlineCompany;
	private String takeOffPlace;
	private String takeOffAirport;
	private String landingPlace;
	private String landingAirport;
	private Date  takeOffTime;
	private Date  landingTime;
	private int changeMoney;
	private int refundMoney; 
	private int baggageAllowance;
	public String getFlightNO() {
		return flightNO;
	}
	public void setFlightNO(String flightNO) {
		this.flightNO = flightNO;
	}
	public String getAirlineCompany() {
		return airlineCompany;
	}
	public void setAirlineCompany(String airlineCompany) {
		this.airlineCompany = airlineCompany;
	}
	public String getTakeOffPlace() {
		return takeOffPlace;
	}
	public void setTakeOffPlace(String takeOffPlace) {
		this.takeOffPlace = takeOffPlace;
	}
	public String getTakeOffAirport() {
		return takeOffAirport;
	}
	public void setTakeOffAirport(String takeOffAirport) {
		this.takeOffAirport = takeOffAirport;
	}
	public String getLandingPlace() {
		return landingPlace;
	}
	public void setLandingPlace(String landingPlace) {
		this.landingPlace = landingPlace;
	}
	public String getLandingAirport() {
		return landingAirport;
	}
	public void setLandingAirport(String landingAirport) {
		this.landingAirport = landingAirport;
	}
	public Date getTakeOffTime() {
		return takeOffTime;
	}
	public void setTakeOffTime(Date takeOffTime) {
		this.takeOffTime = takeOffTime;
	}
	public Date getLandingTime() {
		return landingTime;
	}
	public void setLandingTime(Date landingTime) {
		this.landingTime = landingTime;
	}
	public int getChangeMoney() {
		return changeMoney;
	}
	public void setChangeMoney(int changeMoney) {
		this.changeMoney = changeMoney;
	}
	public int getRefundMoney() {
		return refundMoney;
	}
	public void setRefundMoney(int refundMoney) {
		this.refundMoney = refundMoney;
	}
	public int getBaggageAllowance() {
		return baggageAllowance;
	}
	public void setBaggageAllowance(int baggageAllowance) {
		this.baggageAllowance = baggageAllowance;
	}

	@Override
	public String toString() {
		return "FlightTicketBean [flightNO=" + flightNO + ", airlineCompany=" + airlineCompany + ", takeOffPlace="
				+ takeOffPlace + ", takeOffAirport=" + takeOffAirport + ", landingPlace=" + landingPlace
				+ ", landingAirport=" + landingAirport + ", takeOffTime=" + takeOffTime + ", landingTime=" + landingTime
				+ ", changeMoney=" + changeMoney + ", refundMoney=" + refundMoney + ", baggageAllowance="
				+ baggageAllowance + ", toString()=" + super.toString() + "]";
	}
	
	
	
}
