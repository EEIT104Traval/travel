package model.tour;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name="TourBatch")
public class TourBatchBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)   
	private Integer serialNo;
	private String tourNo;
	@DateTimeFormat(pattern="yyyy/MM/dd")
	private Date departureDate;
	private Integer peopleCount;
	private Integer price_adult;
	private Integer price_child;
	private Integer price_baby;
	private Integer discount;
	private String airline_go;
	private String distination_go;
	private String airline_back;
	private String distination_back;
	private String content;
	
	@ManyToOne
	@JoinColumn(
			name = "tourNo",
			referencedColumnName = "tourNo",
			insertable = false,
			updatable = false
			)
	private GroupTourBean groupTourBean ;
	public GroupTourBean getGroupTourBean() {
		return groupTourBean;
	}
	public void setGroupTourBean(GroupTourBean groupTourBean) {
		this.groupTourBean = groupTourBean;
	}
	
	@Transient
	private String tourName;
	@Transient
	private String country;

	@Override
	public String toString() {
		return "TourBatchBean [serialNo=" + serialNo + ", tourNo=" + tourNo + ", departureDate=" + departureDate
				+ ", peopleCount=" + peopleCount + ", price_adult=" + price_adult + ", price_child=" + price_child
				+ ", price_baby=" + price_baby + ", discount=" + discount + ", airline_go=" + airline_go
				+ ", distination_go=" + distination_go + ", airline_back=" + airline_back + ", distination_back="
				+ distination_back + ", content=" + content + ", groupTourBean=" + groupTourBean + ", tourName="
				+ tourName + ", country=" + country + ", getGroupTourBean()=" + getGroupTourBean() + ", getTourName()="
				+ getTourName() + ", getCountry()=" + getCountry() + ", getSerialNo()=" + getSerialNo()
				+ ", getTourNo()=" + getTourNo() + ", getDepartureDate()=" + getDepartureDate() + ", getPeopleCount()="
				+ getPeopleCount() + ", getPrice_adult()=" + getPrice_adult() + ", getPrice_child()=" + getPrice_child()
				+ ", getPrice_baby()=" + getPrice_baby() + ", getDiscount()=" + getDiscount() + ", getAirline_go()="
				+ getAirline_go() + ", getDistination_go()=" + getDistination_go() + ", getAirline_back()="
				+ getAirline_back() + ", getDistination_back()=" + getDistination_back() + ", getContent()="
				+ getContent() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	public String getTourName() {
		return tourName;
	}
	public void setTourName(String tourName) {
		this.tourName = tourName;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public Integer getSerialNo() {
		return serialNo;
	}
	public void setSerialNo(Integer serialNo) {
		this.serialNo = serialNo;
	}
	public String getTourNo() {
		return tourNo;
	}
	public void setTourNo(String tourNo) {
		this.tourNo = tourNo;
	}
	public Date getDepartureDate() {
		return departureDate;
	}
	public void setDepartureDate(Date date) {
		this.departureDate = date;
	}
	public Integer getPeopleCount() {
		return peopleCount;
	}
	public void setPeopleCount(Integer peopleCount) {
		this.peopleCount = peopleCount;
	}
	public Integer getPrice_adult() {
		return price_adult;
	}
	public void setPrice_adult(Integer price_adult) {
		this.price_adult = price_adult;
	}
	public Integer getPrice_child() {
		return price_child;
	}
	public void setPrice_child(Integer price_child) {
		this.price_child = price_child;
	}
	public Integer getPrice_baby() {
		return price_baby;
	}
	public void setPrice_baby(Integer price_baby) {
		this.price_baby = price_baby;
	}
	public Integer getDiscount() {
		return discount;
	}
	public void setDiscount(Integer discount) {
		this.discount = discount;
	}
	public String getAirline_go() {
		return airline_go;
	}
	public void setAirline_go(String airline_go) {
		this.airline_go = airline_go;
	}
	public String getDistination_go() {
		return distination_go;
	}
	public void setDistination_go(String distination_go) {
		this.distination_go = distination_go;
	}
	public String getAirline_back() {
		return airline_back;
	}
	public void setAirline_back(String airline_back) {
		this.airline_back = airline_back;
	}
	public String getDistination_back() {
		return distination_back;
	}
	public void setDistination_back(String distination_back) {
		this.distination_back = distination_back;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	
	
	
}
