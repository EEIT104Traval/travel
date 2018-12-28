package model.hotel;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="HotelOrderDetails")
public class _06HotelOrderDetailsBean {
	@Id
	private Integer orderNo;
	private Integer hotelNo;
	private String hotelName;
	private String username;
	private String bookingPerson;
	private String phone;
	private java.util.Date bookingDate;
	private java.util.Date checkIn;
	private java.util.Date checkOut;
	private String roomType;
	private Integer totalprice;
	private String info;
	
	@Override
	public String toString() {
		return "_06HotelOrderDetailsBean [orderNo=" + orderNo + ", hotelNo=" + hotelNo + ", hotelName=" + hotelName
				+ ", username=" + username + ", bookingPerson=" + bookingPerson + ", phone=" + phone + ", bookingDate="
				+ bookingDate + ", checkIn=" + checkIn + ", checkOut=" + checkOut + ", roomType=" + roomType
				+ ", Totalprice=" + totalprice + ", info=" + info + "]";
	}
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
	public Integer getHotelNo() {
		return hotelNo;
	}
	public void setHotelNo(Integer hotelNo) {
		this.hotelNo = hotelNo;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getBookingPerson() {
		return bookingPerson;
	}
	public void setBookingPerson(String bookingPerson) {
		this.bookingPerson = bookingPerson;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public java.util.Date getBookingDate() {
		return bookingDate;
	}
	public void setBookingDate(java.util.Date bookingDate) {
		this.bookingDate = bookingDate;
	}
	public java.util.Date getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(java.util.Date checkIn) {
		this.checkIn = checkIn;
	}
	public java.util.Date getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(java.util.Date checkOut) {
		this.checkOut = checkOut;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public Integer getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(Integer totalprice) {
		totalprice = totalprice;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}

}
