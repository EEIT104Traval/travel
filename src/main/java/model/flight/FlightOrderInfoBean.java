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
	private String contactGender;
	private String contactLastNameCN;
	private String contactFirstNameCN;
	private String bookingCode;
	private Integer phone;
	private String email;
	private Integer adultCount;
	private Integer childCount;
	private String totalAmount;
	private java.util.Date dealDate;
	private String orderStatus;
	
	public String getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(String totalAmount) {
		this.totalAmount = totalAmount;
	}
	public Integer getFlightOrderNO() {
		return flightOrderNO;
	}
	public void setFlightOrderNO(Integer flightOrderNO) {
		this.flightOrderNO = flightOrderNO;
	}
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	public String getContactGender() {
		return contactGender;
	}
	public void setContactGender(String contactGender) {
		this.contactGender = contactGender;
	}
	public String getContactLastNameCN() {
		return contactLastNameCN;
	}
	public void setContactLastNameCN(String contactLastNameCN) {
		this.contactLastNameCN = contactLastNameCN;
	}
	public String getContactFirstNameCN() {
		return contactFirstNameCN;
	}
	public void setContactFirstNameCN(String contactFirstNameCN) {
		this.contactFirstNameCN = contactFirstNameCN;
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
	public java.util.Date getDealDate() {
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
		return "FlightOrderInfoBean [flightOrderNO=" + flightOrderNO + ", accountName=" + accountName
				+ ", contactGender=" + contactGender + ", contactLastNameCN=" + contactLastNameCN
				+ ", contactFirstNameCN=" + contactFirstNameCN + ", bookingCode=" + bookingCode + ", phone=" + phone
				+ ", email=" + email + ", adultCount=" + adultCount + ", childCount=" + childCount + ", totalAmount="
				+ totalAmount + ", dealDate=" + dealDate + ", orderStatus=" + orderStatus + "]";
	}

	
}
