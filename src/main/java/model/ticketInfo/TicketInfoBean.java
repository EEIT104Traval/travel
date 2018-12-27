package model.ticketInfo;

import java.sql.Date;
import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ticketInfo")
public class TicketInfoBean {
	  @Id
	  private Integer ticketNo ;
	  private String ticketName;
	  private java.sql.Date validity;
	  private Integer adultTicketPrice;
	  private Integer childTicketPrice;
	  private String country;
	  private String category;
	  private String productFeatures;
	  private Byte[] ticketPicture;
	  private String ticketDescription;
	  private String traffic_information;
	  private String special_restrictions;
	  private String googleAddressOrName;
	  
	  
	public Integer getTicketNo() {
		return ticketNo;
	}


	public void setTicketNo(Integer ticketNo) {
		this.ticketNo = ticketNo;
	}


	public String getTicketName() {
		return ticketName;
	}


	public void setTicketName(String ticketName) {
		this.ticketName = ticketName;
	}


	public java.sql.Date getValidity() {
		return validity;
	}


	public void setValidity(java.sql.Date validity) {
		this.validity = validity;
	}


	public Integer getAdultTicketPrice() {
		return adultTicketPrice;
	}


	public void setAdultTicketPrice(Integer adultTicketPrice) {
		this.adultTicketPrice = adultTicketPrice;
	}


	public Integer getChildTicketPrice() {
		return childTicketPrice;
	}


	public void setChildTicketPrice(Integer childTicketPrice) {
		this.childTicketPrice = childTicketPrice;
	}


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public String getProductFeatures() {
		return productFeatures;
	}


	public void setProductFeatures(String productFeatures) {
		this.productFeatures = productFeatures;
	}


	public Byte[] getTicketPicture() {
		return ticketPicture;
	}


	public void setTicketPicture(Byte[] ticketPicture) {
		this.ticketPicture = ticketPicture;
	}


	public String getTicketDescription() {
		return ticketDescription;
	}


	public void setTicketDescription(String ticketDescription) {
		this.ticketDescription = ticketDescription;
	}


	public String getTraffic_information() {
		return traffic_information;
	}


	public void setTraffic_information(String traffic_information) {
		this.traffic_information = traffic_information;
	}


	public String getSpecial_restrictions() {
		return special_restrictions;
	}


	public void setSpecial_restrictions(String special_restrictions) {
		this.special_restrictions = special_restrictions;
	}


	public String getGoogleAddressOrName() {
		return googleAddressOrName;
	}


	public void setGoogleAddressOrName(String googleAddressOrName) {
		this.googleAddressOrName = googleAddressOrName;
	}


	@Override
	public String toString() {
		return "ticketInfoBean [ticketNo=" + ticketNo + ", ticketName=" + ticketName + ", validity=" + validity
				+ ", adultTicketPrice=" + adultTicketPrice + ", childTicketPrice=" + childTicketPrice + ", country="
				+ country + ", category=" + category + ", productFeatures=" + productFeatures + ", ticketPicture="
				+ Arrays.toString(ticketPicture) + ", ticketDescription=" + ticketDescription + ", traffic_information="
				+ traffic_information + ", special_restrictions=" + special_restrictions + ", googleAddressOrName="
				+ googleAddressOrName + "]";
	}

	
}
