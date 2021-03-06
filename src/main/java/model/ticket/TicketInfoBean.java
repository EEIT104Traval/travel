package model.ticket;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ticketInfo")
public class TicketInfoBean {

//	@OneToMany(cascade = CascadeType.REMOVE, mappedBy = "ticketOrderNO")
//	private Set<TicketOrderInfoBean> TicketOrderInfos;
//
//	public Set<TicketOrderInfoBean> getTicketOrderInfos() {
//		return TicketOrderInfos;
//	}
//
//	public void setTicketOrderInfos(Set<TicketOrderInfoBean> TicketOrderInfos) {
//		this.TicketOrderInfos = TicketOrderInfos;
//	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer ticketNo;
	private String ticketName;
	private Integer validity;
	private Integer adultTicketPrice;
	private Integer childTicketPrice;
	private Integer adultTicketSellQ;
	private Integer childTicketSellQ;
	private Integer adultTicketSelledQ;
	private Integer childTicketSelledQ;
	private String country;
	private String category; // 類型 門票 交通券...等
	private String productFeatures;
	private String ticketPicture;
	private String ticketDescription;
	private String traffic_information;
	private String special_restrictions;
	private Integer updown;

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

	public Integer getValidity() {
		return validity;
	}

	public void setValidity(Integer validity) {
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

	public Integer getAdultTicketSellQ() {
		return adultTicketSellQ;
	}

	public void setAdultTicketSellQ(Integer adultTicketSellQ) {
		this.adultTicketSellQ = adultTicketSellQ;
	}

	public Integer getChildTicketSellQ() {
		return childTicketSellQ;
	}

	public void setChildTicketSellQ(Integer childTicketSellQ) {
		this.childTicketSellQ = childTicketSellQ;
	}

	public Integer getAdultTicketSelledQ() {
		return adultTicketSelledQ;
	}

	public void setAdultTicketSelledQ(Integer adultTicketSelledQ) {
		this.adultTicketSelledQ = adultTicketSelledQ;
	}

	public Integer getChildTicketSelledQ() {
		return childTicketSelledQ;
	}

	public void setChildTicketSelledQ(Integer childTicketSelledQ) {
		this.childTicketSelledQ = childTicketSelledQ;
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

	public String getTicketPicture() {
		return ticketPicture;
	}

	public void setTicketPicture(String ticketPicture) {
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



	public Integer getUpdown() {
		return updown;
	}

	public void setUpdown(Integer updown) {
		this.updown = updown;
	}

	@Override
	public String toString() {
		return "TicketInfoBean [ticketNo=" + ticketNo + ", ticketName=" + ticketName + ", validity=" + validity
				+ ", adultTicketPrice=" + adultTicketPrice + ", childTicketPrice=" + childTicketPrice
				+ ", adultTicketSellQ=" + adultTicketSellQ + ", childTicketSellQ=" + childTicketSellQ
				+ ", adultTicketSelledQ=" + adultTicketSelledQ + ", childTicketSelledQ=" + childTicketSelledQ
				+ ", country=" + country + ", category=" + category + ", productFeatures=" + productFeatures
				+ ", ticketPicture=" + ticketPicture + ", ticketDescription=" + ticketDescription
				+ ", traffic_information=" + traffic_information + ", special_restrictions=" + special_restrictions
				+ ", updown=" + updown + "]";
	}
}
