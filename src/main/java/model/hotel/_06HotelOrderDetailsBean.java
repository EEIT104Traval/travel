package model.hotel;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="HotelOrderDetails")
public class _06HotelOrderDetailsBean {
	@Id
	private Integer picNo;
	private Integer hotelNo;
	private String picName;
	private String picDiscription;
	private byte[] pic;

	@Override
	public String toString() {
		return "HotelOrderDetailsBean [picNo=" + picNo + ", hotelNo=" + hotelNo + ", picName=" + picName
				+ ", picDiscription=" + picDiscription + ", pic=" + Arrays.toString(pic) + "]";
	}
	public Integer getPicNo() {
		return picNo;
	}
	public void setPicNo(Integer picNo) {
		this.picNo = picNo;
	}
	public Integer getHotelNo() {
		return hotelNo;
	}
	public void setHotelNo(Integer hotelNo) {
		this.hotelNo = hotelNo;
	}
	public String getPicName() {
		return picName;
	}
	public void setPicName(String picName) {
		this.picName = picName;
	}
	public String getPicDiscription() {
		return picDiscription;
	}
	public void setPicDiscription(String picDiscription) {
		this.picDiscription = picDiscription;
	}
	public byte[] getPic() {
		return pic;
	}
	public void setPic(byte[] pic) {
		this.pic = pic;
	}
	
}
