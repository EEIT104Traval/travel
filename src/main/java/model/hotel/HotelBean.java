package model.hotel;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Hotel")
public class HotelBean {
	@Id
	private Integer hotelNo;
	private String hotelName;
	private String country;
	private String city;
	private String address;
	private Integer hotelTotalRooms;
	private String starRate;
	private String price;
	private String pic;
	
	@Override
	public String toString() {
		return "HotelBean [hotelNo=" + hotelNo + ", hotelName=" + hotelName + ", country=" + country + ", city=" + city
				+ ", address=" + address + ", hotelTotalRooms=" + hotelTotalRooms + ", starRate=" + starRate
				+ ", price=" + price + ", pic=" + pic + "]";
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
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getHotelTotalRooms() {
		return hotelTotalRooms;
	}
	public void setHotelTotalRooms(Integer hotelTotalRooms) {
		this.hotelTotalRooms = hotelTotalRooms;
	}
	public String getStarRate() {
		return starRate;
	}
	public void setStarRate(String starRate) {
		this.starRate = starRate;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	
}
