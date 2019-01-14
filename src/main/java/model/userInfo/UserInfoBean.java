package model.userInfo;

import java.util.Arrays;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import model.hotel.HotelOrderDetailsBean;
import model.ticket.TicketOrderInfoBean;
import model.tour.TourOrderInfoBean;

@Entity
@Table(name="UserInfo")
public class UserInfoBean {
	@Id
	private String accountName;
	private byte[] password;	
	private String firstname;
	private String lastname;
	private String identityNo; //身分證字號
	private String email;
	private java.util.Date birth;
	private String sex;
	private String phone;
	private String address;
	private String authority;
	private String gorfb;
	private String loginId;
	private java.sql.Timestamp registerDate;	// 會員登錄日期
	
//	@OneToMany(
//			cascade=CascadeType.REMOVE,
//			mappedBy="accountName"
//	)
	@Transient
	private List<TourOrderInfoBean> tourOrderInfoBean;
	
//	@OneToMany(
//			cascade=CascadeType.REMOVE,
//			mappedBy="accountName"
//	)
	@Transient
	private List<TicketOrderInfoBean> ticketOrderInfoBean;
	
//	@OneToMany(
//			cascade=CascadeType.REMOVE,
//			mappedBy="accountName"
//	)
	@Transient
	private List<HotelOrderDetailsBean> hotelOrderDetailsBean;


	
	@Override
	public String toString() {
		return "UserInfoBean [accountName=" + accountName + ", password=" + Arrays.toString(password) + ", firstname="
				+ firstname + ", lastname=" + lastname + ", identityNo=" + identityNo + ", email=" + email + ", birth="
				+ birth + ", sex=" + sex + ", phone=" + phone + ", address=" + address + ", authority=" + authority
				+ ", gorfb=" + gorfb + ", loginId=" + loginId + ", registerDate=" + registerDate
				+ ", tourOrderInfoBean=" + tourOrderInfoBean + ", ticketOrderInfoBean=" + ticketOrderInfoBean
				+ ", hotelOrderDetailsBean=" + hotelOrderDetailsBean + "]";
	}

	public String getAccountName() {
		return accountName;
	}

	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	public byte[] getPassword() {
		return password;
	}

	public void setPassword(byte[] password) {
		this.password = password;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getIdentityNo() {
		return identityNo;
	}

	public void setIdentityNo(String identityNo) {
		this.identityNo = identityNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public java.util.Date getBirth() {
		return birth;
	}

	public void setBirth(java.util.Date birth) {
		this.birth = birth;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public String getGorfb() {
		return gorfb;
	}

	public void setGorfb(String gorfb) {
		this.gorfb = gorfb;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public List<TourOrderInfoBean> getTourOrderInfoBean() {
		return tourOrderInfoBean;
	}

	public void setTourOrderInfoBean(List<TourOrderInfoBean> tourOrderInfoBean) {
		this.tourOrderInfoBean = tourOrderInfoBean;
	}

	public List<TicketOrderInfoBean> getTicketOrderInfoBean() {
		return ticketOrderInfoBean;
	}

	public void setTicketOrderInfoBean(List<TicketOrderInfoBean> ticketOrderInfoBean) {
		this.ticketOrderInfoBean = ticketOrderInfoBean;
	}

	public List<HotelOrderDetailsBean> getHotelOrderDetailsBean() {
		return hotelOrderDetailsBean;
	}

	public void setHotelOrderDetailsBean(List<HotelOrderDetailsBean> hotelOrderDetailsBean) {
		this.hotelOrderDetailsBean = hotelOrderDetailsBean;
	}

	public java.sql.Timestamp getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(java.sql.Timestamp registerDate) {
		this.registerDate = registerDate;
	}



}
