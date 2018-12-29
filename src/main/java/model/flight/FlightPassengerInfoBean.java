package model.flight;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "FlightPassengerInfo")
public class FlightPassengerInfoBean {
	
	@Id
	private Integer flightTicketNO;
	private Integer flightOrderNO;
	private String firstName;
	private String lastName;
	private Integer price;
	private String adultOrChild;
	private java.util.Date birth;
	private String title;


	@Override
	public String toString() {
		return "FlightPassengerInfoBean [flightTicketNO=" + flightTicketNO + ", flightOrderNO=" + flightOrderNO
				+ ", firstName=" + firstName + ", lastName=" + lastName + ", price=" + price + ", adultOrChild="
				+ adultOrChild + ", birth=" + birth + ", title=" + title + "]";
	}

	public Integer getFlightTicketNO() {
		return flightTicketNO;
	}

	public void setFlightTicketNO(Integer flightTicketNO) {
		this.flightTicketNO = flightTicketNO;
	}

	public Integer getFlightOrderNO() {
		return flightOrderNO;
	}

	public void setFlightOrderNO(Integer flightOrderNO) {
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

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getAdultOrChild() {
		return adultOrChild;
	}

	public void setAdultOrChild(String adultOrChild) {
		this.adultOrChild = adultOrChild;
	}

	public java.util.Date getBirth() {
		return birth;
	}

	public void setBirth(java.util.Date birth) {
		this.birth = birth;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

}
