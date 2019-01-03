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
	private String phone;
	private String email;
	private Integer hotelTotalRooms;
	private String pic;
	
	@Override
	public String toString() {
		return "HotelBean [hotelNo=" + hotelNo + ", hotelName=" + hotelName + ", address=" + address + ", phone="
				+ phone + ", email=" + email + ", hotelTotalRooms=" + hotelTotalRooms + ", pic=" + pic + "]";
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getHotelTotalRooms() {
		return hotelTotalRooms;
	}
	public void setHotelTotalRooms(Integer hotelTotalRooms) {
		this.hotelTotalRooms = hotelTotalRooms;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	
}