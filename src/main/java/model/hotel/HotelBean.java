package model.hotel;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Hotel")
public class HotelBean {
	@Id
	private Integer hotelNo;
	private String hotelName;
	private String address;
	private Integer phone;
	private String email;
	private Integer totalroom;
	
	@Override
	public String toString() {
		return "HotelBean [hotelNo=" + hotelNo + ", hotelName=" + hotelName + ", address=" + address + ", phone="
				+ phone + ", email=" + email + ", totalroom=" + totalroom + "]";
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getPhone() {
		return phone;
	}
	public void setPhone(Integer phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getTotalroom() {
		return totalroom;
	}
	public void setTotalroom(Integer totalroom) {
		this.totalroom = totalroom;
	}
	
}
