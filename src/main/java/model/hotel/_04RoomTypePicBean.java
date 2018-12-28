package model.hotel;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="RoomTypePic")
public class _04RoomTypePicBean {
	@Id
	private Integer picNo;
	private Integer roomTypeNo;
	private String picName;
	private String pic;
	private String picDiscription;
	
	@Override
	public String toString() {
		return "_04RoomTypePicBean [picNo=" + picNo + ", roomTypeNo=" + roomTypeNo + ", picName=" + picName + ", pic="
				+ pic + ", picDiscription=" + picDiscription + "]";
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
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getPicDiscription() {
		return picDiscription;
	}
	public void setPicDiscription(String picDiscription) {
		this.picDiscription = picDiscription;
	}
	
}
