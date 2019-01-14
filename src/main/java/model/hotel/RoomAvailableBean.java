package model.hotel;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="RoomAvailable")
public class RoomAvailableBean {
	@Id
	private Integer serialNo;
	private Integer roomTypeNo;
	private java.util.Date date;
	private Integer totalRooms;
	private Integer sale;
	private Integer available;
	private Integer notForSale;
	
	@Override
	public String toString() {
		return "RoomAvailableBean [serialNo=" + serialNo + ", roomTypeNo=" + roomTypeNo + ", date=" + date
				+ ", totalRooms=" + totalRooms + ", sale=" + sale + ", available=" + available + ", notForSale="
				+ notForSale + "]";
	}
	public Integer getSerialNo() {
		return serialNo;
	}
	public void setSerialNo(Integer serialNo) {
		this.serialNo = serialNo;
	}
	public Integer getRoomTypeNo() {
		return roomTypeNo;
	}
	public void setRoomTypeNo(Integer roomTypeNo) {
		this.roomTypeNo = roomTypeNo;
	}
	public java.util.Date getDate() {
		return date;
	}
	public void setDate(java.util.Date date) {
		this.date = date;
	}
	public Integer getTotalRooms() {
		return totalRooms;
	}
	public void setTotalRooms(Integer totalRooms) {
		this.totalRooms = totalRooms;
	}
	public Integer getSale() {
		return sale;
	}
	public void setSale(Integer sale) {
		this.sale = sale;
	}
	public Integer getAvailable() {
		return available;
	}
	public void setAvailable(Integer available) {
		this.available = available;
	}
	public Integer getNotForSale() {
		return notForSale;
	}
	public void setNotForSale(Integer notForSale) {
		this.notForSale = notForSale;
	}
	
	
	
}
