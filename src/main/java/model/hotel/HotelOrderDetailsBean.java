package model.hotel;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="HotelOrderDetails")
public class HotelOrderDetailsBean {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer orderNo;
	private Integer hotelNo;
	private String accountName;
	private java.util.Date createDate;
	private java.util.Date updateDate;
	private String bookingPerson;
	private String hotelName;
	private String phone;
	private java.util.Date bookingDate;
	private java.util.Date checkIn;
	private java.util.Date checkOut;
	private String roomType;
	private Integer roomPrice;
	private Integer stayNights;
	private Integer totalPrice;
	private String info;
	
	@Override
	public String toString() {
		return "HotelOrderDetailsBean [orderNo=" + orderNo + ", hotelNo=" + hotelNo + ", accountName=" + accountName
				+ ", createDate=" + createDate + ", updateDate=" + updateDate + ", bookingPerson=" + bookingPerson
				+ ", hotelName=" + hotelName + ", phone=" + phone + ", bookingDate=" + bookingDate + ", checkIn="
				+ checkIn + ", checkOut=" + checkOut + ", roomType=" + roomType + ", roomPrice=" + roomPrice
				+ ", stayNights=" + stayNights + ", totalPrice=" + totalPrice + ", info=" + info + "]";
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
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	public java.util.Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(java.util.Date createDate) {
		this.createDate = createDate;
	}
	public java.util.Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(java.util.Date updateDate) {
		this.updateDate = updateDate;
	}
	public String getBookingPerson() {
		return bookingPerson;
	}
	public void setBookingPerson(String bookingPerson) {
		this.bookingPerson = bookingPerson;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
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
	public Integer getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(Integer roomPrice) {
		this.roomPrice = roomPrice;
	}
	public Integer getStayNights() {
		return stayNights;
	}
	public void setStayNights(Integer stayNights) {
		this.stayNights = stayNights;
	}
	public Integer getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Integer totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	
}
