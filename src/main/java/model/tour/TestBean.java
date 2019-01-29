package model.tour;

public class TestBean {
	
	private String tourNo; 
	private String tourName; 
	private String departureDate;
	private String orderNo;
	private String accountName;
	private String fullName;
	private String email;
	private String phone;
	private String orderStatus;
	private String orderTime;
	private String quantity;
	private String total;
	private String sex;
	
	public String getTourNo() {
		return tourNo;
	}

	public void setTourNo(String tourNo) {
		this.tourNo = tourNo;
	}

	public String getTourName() {
		return tourName;
	}

	public void setTourName(String tourName) {
		this.tourName = tourName;
	}

	public String getDepartureDate() {
		return departureDate;
	}

	public void setDepartureDate(String departureDate) {
		this.departureDate = departureDate;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public String getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	@Override
	public String toString() {
		return "TestBean [tourNo=" + tourNo + ", tourName=" + tourName + ", departureDate=" + departureDate
				+ ", orderNo=" + orderNo + ", accountName=" + accountName + ", fullName=" + fullName + ", email="
				+ email + ", phone=" + phone + ", orderStatus=" + orderStatus + ", orderTime=" + orderTime
				+ ", quantity=" + quantity + ", total=" + total + ", sex=" + sex + "]";
	}	

}