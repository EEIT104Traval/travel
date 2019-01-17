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
	private String hotelNameCH;
	private String hotelNameEN;
	private String countryCH;
	private String countryEN;
	private String cityCH;
	private String cityEN;
	private String address;
	private Integer hotelTotalRooms;
	private Integer star;
	private String starRate;
	private String price;
	private String pic;
	
	@Override
	public String toString() {
		return "HotelBean [hotelNo=" + hotelNo + ", hotelNameCH=" + hotelNameCH + ", hotelNameEN=" + hotelNameEN
				+ ", countryCH=" + countryCH + ", countryEN=" + countryEN + ", cityCH=" + cityCH + ", cityEN=" + cityEN
				+ ", address=" + address + ", hotelTotalRooms=" + hotelTotalRooms + ", star=" + star + ", starRate="
				+ starRate + ", price=" + price + ", pic=" + pic + "]";
	}

	public Integer getHotelNo() {
		return hotelNo;
	}

	public void setHotelNo(Integer hotelNo) {
		this.hotelNo = hotelNo;
	}

	public String getHotelNameCH() {
		return hotelNameCH;
	}

	public void setHotelNameCH(String hotelNameCH) {
		this.hotelNameCH = hotelNameCH;
	}

	public String getHotelNameEN() {
		return hotelNameEN;
	}

	public void setHotelNameEN(String hotelNameEN) {
		this.hotelNameEN = hotelNameEN;
	}

	public String getCountryCH() {
		return countryCH;
	}

	public void setCountryCH(String countryCH) {
		this.countryCH = countryCH;
	}

	public String getCountryEN() {
		return countryEN;
	}

	public void setCountryEN(String countryEN) {
		this.countryEN = countryEN;
	}

	public String getCityCH() {
		return cityCH;
	}

	public void setCityCH(String cityCH) {
		this.cityCH = cityCH;
	}

	public String getCityEN() {
		return cityEN;
	}

	public void setCityEN(String cityEN) {
		this.cityEN = cityEN;
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

	public Integer getStar() {
		return star;
	}

	public void setStar(Integer star) {
		this.star = star;
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
