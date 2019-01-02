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
	private String accountName;
	private String bookingCode;
	private Integer phone;
	private String email;
	private Integer adultCount;
	private Integer childCount;
	private java.util.Date dealDate;
	private String orderStatus;

	public Integer getFlightOrderNO() {
		return flightOrderNO;
	}

	public void setFlightOrderNO(Integer flightOrderNO) {
		this.flightOrderNO = flightOrderNO;
	}

	public String getUsername() {
		return accountName;
	}

	public void setUsername(String accountName) {
		this.accountName = accountName;
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


	public Integer getAdultCount() {
		return adultCount;
	}

	public void setAdultCount(Integer adultCount) {
		this.adultCount = adultCount;
	}

	public Integer getChildCount() {
		return childCount;
	}

	public void setChildCount(Integer childCount) {
		this.childCount = childCount;
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
		return "FlightOrderInfoBean [flightOrderNO=" + flightOrderNO + ", accountName=" + accountName + ", bookingCode="
				+ bookingCode + ", phone=" + phone + ", email=" + email + ", adultCount=" + adultCount + ", childCount="
				+ childCount + ", dealDate=" + dealDate + ", orderStatus=" + orderStatus + ", toString()="
				+ super.toString() + "]";
	}

	
}
