package model.flight;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="FlightPassengerInfo")
public class FlightPassengerInfoBean {
	@Id
	private Integer serial;
	private Integer flightTicketNO;
	private Integer flightOrderNO;
	private String firstName;
	private String lastName;
	private String passportNo;
	private Integer price;
	private String adultOrChild;
	private String classLevel;
	public Integer getSerial() {
		return serial;
	}
	public void setSerial(int serial) {
		this.serial = serial;
	}
	public int getFlightTicketNO() {
		return flightTicketNO;
	}
	public void setFlightTicketNO(int flightTicketNO) {
		this.flightTicketNO = flightTicketNO;
	}
	public int getFlightOrderNO() {
		return flightOrderNO;
	}
	public void setFlightOrderNO(int flightOrderNO) {
		this.flightOrderNO = flightOrderNO;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPassportNo() {
		return passportNo;
	}
	public void setPassportNo(String passportNo) {
		this.passportNo = passportNo;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getAdultOrChild() {
		return adultOrChild;
	}
	public void setAdultOrChild(String adultOrChild) {
		this.adultOrChild = adultOrChild;
	}
	public String getClassLevel() {
		return classLevel;
	}
	public void setClassLevel(String classLevel) {
		this.classLevel = classLevel;
	}
	@Override
	public String toString() {
		return "FlightPassengerInfoBean [serial=" + serial + ", flightTicketNO=" + flightTicketNO + ", flightOrderNO="
				+ flightOrderNO + ", firstName=" + firstName + ", lastName=" + lastName + ", passportNo=" + passportNo
				+ ", price=" + price + ", adultOrChild=" + adultOrChild + ", classLevel=" + classLevel + ", toString()="
				+ super.toString() + "]";
	}
	
}
