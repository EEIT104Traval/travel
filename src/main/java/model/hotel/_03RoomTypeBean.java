package model.hotel;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="RoomType")
public class _03RoomTypeBean {
	@Id
	private Integer hotelNo;
	private Integer roomTypeNo;
	private String roomType;
	private java.util.Date saleDate;
	private Integer price;
	
	@Override
	public String toString() {
		return "_03RoomTypeBean [hotelNo=" + hotelNo + ", roomTypeNo=" + roomTypeNo + ", roomType=" + roomType
				+ ", saleDate=" + saleDate + ", price=" + price + "]";
	}
	public Integer getHotelNo() {
		return hotelNo;
	}
	public void setHotelNo(Integer hotelNo) {
		this.hotelNo = hotelNo;
	}
	public Integer getRoomTypeNo() {
		return roomTypeNo;
	}
	public void setRoomTypeNo(Integer roomTypeNo) {
		this.roomTypeNo = roomTypeNo;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public java.util.Date getSaleDate() {
		return saleDate;
	}
	public void setSaleDate(java.util.Date saleDate) {
		this.saleDate = saleDate;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	
}
