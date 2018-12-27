package model.hotel;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="RoomLeft")
public class _05RoomLeftBean {
	@Id
	private Integer picNo;
	private Integer roomTypeNo;
	private String picName;
	private byte[] pic;
	private String picDiscription;
	
	@Override
	public String toString() {
		return "RoomLeftBean [picNo=" + picNo + ", roomTypeNo=" + roomTypeNo + ", picName=" + picName + ", pic="
				+ Arrays.toString(pic) + ", picDiscription=" + picDiscription + "]";
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
	public String getPicName() {
		return picName;
	}
	public void setPicName(String picName) {
		this.picName = picName;
	}
	public byte[] getPic() {
		return pic;
	}
	public void setPic(byte[] pic) {
		this.pic = pic;
	}
	public String getPicDiscription() {
		return picDiscription;
	}
	public void setPicDiscription(String picDiscription) {
		this.picDiscription = picDiscription;
	}
	
}
