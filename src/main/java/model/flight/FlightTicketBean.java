package model.flight;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "FlightTicket")
public class FlightTicketBean {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer serial;
	private Integer flightOrderNo;
	private String flightNO;
	private String airlineCode;
	private String takeOffPlace;
	private String landingPlace;
	private Date takeOffTime;
	private Date landingTime;
	private int adultPrice;
	private int childPrice;
	private Double baggageAllowance;
	private String goOrBack;
	private String classLevel;
	public Integer getSerial() {
		return serial;
	}
	public void setSerial(Integer serial) {
		this.serial = serial;
	}
	public Integer getFlightOrderNo() {
		return flightOrderNo;
	}
	public void setFlightOrderNo(Integer flightOrderNo) {
		this.flightOrderNo = flightOrderNo;
	}
	public String getFlightNO() {
		return flightNO;
	}
	public void setFlightNO(String flightNO) {
		this.flightNO = flightNO;
	}
	public String getAirlineCode() {
		return airlineCode;
	}
	public void setAirlineCode(String airlineCode) {
		this.airlineCode = airlineCode;
	}
	public String getTakeOffPlace() {
		return takeOffPlace;
	}
	public void setTakeOffPlace(String takeOffPlace) {
		this.takeOffPlace = takeOffPlace;
	}
	public String getLandingPlace() {
		return landingPlace;
	}
	public void setLandingPlace(String landingPlace) {
		this.landingPlace = landingPlace;
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
	public int getAdultPrice() {
		return adultPrice;
	}
	public void setAdultPrice(int adultPrice) {
		this.adultPrice = adultPrice;
	}
	public int getChildPrice() {
		return childPrice;
	}
	public void setChildPrice(int childPrice) {
		this.childPrice = childPrice;
	}
	public Double getBaggageAllowance() {
		return baggageAllowance;
	}
	public void setBaggageAllowance(Double baggageAllowance) {
		this.baggageAllowance = baggageAllowance;
	}
	public String getGoOrBack() {
		return goOrBack;
	}
	public void setGoOrBack(String goOrBack) {
		this.goOrBack = goOrBack;
	}
	public String getClassLevel() {
		return classLevel;
	}
	public void setClassLevel(String classLevel) {
		this.classLevel = classLevel;
	}
	@Override
	public String toString() {
		return "FlightTicketBean [serial=" + serial + ", flightOrderNo=" + flightOrderNo + ", flightNO=" + flightNO
				+ ", airlineCode=" + airlineCode + ", takeOffPlace=" + takeOffPlace + ", landingPlace=" + landingPlace
				+ ", takeOffTime=" + takeOffTime + ", landingTime=" + landingTime + ", adultPrice=" + adultPrice
				+ ", childPrice=" + childPrice + ", baggageAllowance=" + baggageAllowance + ", goOrBack=" + goOrBack
				+ ", classLevel=" + classLevel + "]";
	}


}
