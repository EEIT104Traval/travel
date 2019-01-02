package model.hotel;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="RoomTypePic")
public class RoomTypePicBean {
	@Id
	private Integer picNo;
	private Integer roomTypeNo;
	private String pic;
	
	@Override
	public String toString() {
		return "RoomTypePicBean [picNo=" + picNo + ", roomTypeNo=" + roomTypeNo + ", pic=" + pic + "]";
	}
	public Integer getPicNo() {
		return picNo;
	}
	public void setPicNo(Integer picNo) {
		this.picNo = picNo;
	}
	public Integer getRoomTypeNo() {
		return roomTypeNo;
	}
	public void setRoomTypeNo(Integer roomTypeNo) {
		this.roomTypeNo = roomTypeNo;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	
}
