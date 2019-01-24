package model.tour;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="TourOrderInfo")

public class TourOrderInfoBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)  
	private Integer orderNo;
	private Integer serialNo;
	private String accountName;
	private String fullName;
	private String phone;
	private String email;
	private String sex;
	private Integer quantity;
	private Integer total;
	private String orderStatus;
	private Date orderTime;

	@Override
	public String toString() {
		return "TourOrderInfoBean [orderNo=" + orderNo + ", serialNo=" + serialNo + ", accountName=" + accountName
				+ ", fullName=" + fullName + ", phone=" + phone + ", email=" + email + ", sex=" + sex + ", quantity="
				+ quantity + ", total=" + total + ", orderStatus=" + orderStatus + ", orderTime=" + orderTime
				+ ", tourName=" + tourName + ", country=" + country + ", tourNo=" + tourNo + "]";
	}
	
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
	public Integer getSerialNo() {
		return serialNo;
	}
	public void setSerialNo(Integer serialNo) {
		this.serialNo = serialNo;
	}
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public Date getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}
	
	@Transient
	private String tourName;
	@Transient
	private String country;
	public String getTourNo() {
		return tourNo;
	}

	public void setTourNo(String tourNo) {
		this.tourNo = tourNo;
	}

	@Transient
	private String tourNo;

	public String getTourName() {
		return tourName;
	}

	public void setTourName(String tourName) {
		this.tourName = tourName;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

}