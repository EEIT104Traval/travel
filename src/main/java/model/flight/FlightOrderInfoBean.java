package model.flight;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="FlightOrderInfo")
public class FlightOrderInfoBean {
	@Id
	private Integer flightOrderNO ;
	private String username;
	private String bookingCode;
	private String flightNO;
	private String email;
	private Integer peopleCount;
	private Date dealDate;
	private Date takeDate;
	private String goOrBack;
	private String orderStatus;

	@Override
	public String toString() {
		return "FlightOrderInfoBean [flightOrderNO=" + flightOrderNO + ", username=" + username + ", bookingCode="
				+ bookingCode + ", flightNO=" + flightNO + ", email=" + email + ", peopleCount=" + peopleCount
				+ ", dealDate=" + dealDate + ", takeDate=" + takeDate + ", goOrBack=" + goOrBack + ", orderStatus="
				+ orderStatus + ", toString()=" + super.toString() + "]";
	}
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
	public String getFlightNO() {
		return flightNO;
	}
	public void setFlightNO(String flightNO) {
		this.flightNO = flightNO;
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
	public void setDealDate(Date dealDate) {
		this.dealDate = dealDate;
	}
	public Date getTakeDate() {
		return takeDate;
	}
	public void setTakeDate(Date takeDate) {
		this.takeDate = takeDate;
	}
	public String getGoOrBack() {
		return goOrBack;
	}
	public void setGoOrBack(String goOrBack) {
		this.goOrBack = goOrBack;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

}
