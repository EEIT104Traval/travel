package model.hotel;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="RoomType")
public class RoomTypeBean {
	@Id
	private Integer serialNo;
	private Integer hotelNo;
	private Integer roomLeft;
	private Integer notForSale;
	
	@Override
	public String toString() {
		return "RoomTypeBean [serialNo=" + serialNo + ", hotelNo=" + hotelNo + ", roomLeft=" + roomLeft
				+ ", notForSale=" + notForSale + "]";
	}
	public Integer getSerialNo() {
		return serialNo;
	}
	public void setSerialNo(Integer serialNo) {
		this.serialNo = serialNo;
	}
	public Integer getHotelNo() {
		return hotelNo;
	}
	public void setHotelNo(Integer hotelNo) {
		this.hotelNo = hotelNo;
	}
	public Integer getRoomLeft() {
		return roomLeft;
	}
	public void setRoomLeft(Integer roomLeft) {
		this.roomLeft = roomLeft;
	}
	public Integer getNotForSale() {
		return notForSale;
	}
	public void setNotForSale(Integer notForSale) {
		this.notForSale = notForSale;
	}

}
