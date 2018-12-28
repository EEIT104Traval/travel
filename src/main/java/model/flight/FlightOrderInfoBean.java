package model.flight;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "FlightOrderInfo")
public class FlightOrderInfoBean {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer flightOrderNO;
	private String username;
	private String bookingCode;
	private Integer phone;
	private String email;
	private Integer peopleCount;
	private java.util.Date dealDate;
	private String orderStatus;

	public Integer getFlightOrderNO() {
		return flightOrderNO;
	}

	public void setFlightOrderNO(Integer flightOrderNO) {
		this.flightOrderNO = flightOrderNO;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getBookingCode() {
		return bookingCode;
	}

	public void setBookingCode(String bookingCode) {
		this.bookingCode = bookingCode;
	}

	public Integer getPhone() {
		return phone;
	}

	public void setPhone(Integer phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getPeopleCount() {
		return peopleCount;
	}

	public void setPeopleCount(Integer peopleCount) {
		this.peopleCount = peopleCount;
	}

	public Date getDealDate() {
		return dealDate;
	}

	public void setDealDate(java.util.Date dealDate) {
		this.dealDate = dealDate;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	@Override
	public String toString() {
		return "FlightOrderInfoBean [flightOrderNO=" + flightOrderNO + ", username=" + username + ", bookingCode="
				+ bookingCode + ", phone=" + phone + ", email=" + email + ", peopleCount=" + peopleCount + ", dealDate="
				+ dealDate + ", orderStatus=" + orderStatus + ", getFlightOrderNO()=" + getFlightOrderNO()
				+ ", getUsername()=" + getUsername() + ", getBookingCode()=" + getBookingCode() + ", getPhone()="
				+ getPhone() + ", getEmail()=" + getEmail() + ", getPeopleCount()=" + getPeopleCount()
				+ ", getDealDate()=" + getDealDate() + ", getOrderStatus()=" + getOrderStatus() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

}
