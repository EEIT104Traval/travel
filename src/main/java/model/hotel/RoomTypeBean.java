package model.hotel;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="RoomType")
public class RoomTypeBean {
	@Id
	private Integer roomTypeNo;
	private Integer hotelNo;
	private String roomType;
	private Integer totalRooms;
	private Integer price;
	
	@Transient
	private java.util.Date date;
	
	
	
	@Override
	public String toString() {
		return "RoomTypeBean [roomTypeNo=" + roomTypeNo + ", hotelNo=" + hotelNo + ", roomType=" + roomType
				+ ", totalRooms=" + totalRooms + ", price=" + price + ", date=" + date + "]";
	}
	public java.util.Date getDate() {
		return date;
	}
	public void setDate(java.util.Date date) {
		this.date = date;
	}
	public Integer getRoomTypeNo() {
		return roomTypeNo;
	}
	public void setRoomTypeNo(Integer roomTypeNo) {
		this.roomTypeNo = roomTypeNo;
	}
	public Integer getHotelNo() {
		return hotelNo;
	}
	public void setHotelNo(Integer hotelNo) {
		this.hotelNo = hotelNo;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public Integer getTotalRooms() {
		return totalRooms;
	}
	public void setTotalRooms(Integer totalRooms) {
		this.totalRooms = totalRooms;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}

}
