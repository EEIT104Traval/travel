package model.tour;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="GroupTour")
public class GroupTourBean {
	@Id
	private String tourNo;
	private String tag;
	private String country;
	private String tourName;
	private String destination;
	private Integer tourDays;
	private Integer guaranteedCount;
	private Integer fullPeopleCount;
	private Integer clickCount;
	private Integer content;
	
		
	public String getTourNo() {
		return tourNo;
	}
	public void setTourNo(String tourNo) {
		this.tourNo = tourNo;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getTourName() {
		return tourName;
	}
	public void setTourName(String tourName) {
		this.tourName = tourName;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public Integer getTourDays() {
		return tourDays;
	}
	public void setTourDays(Integer tourDays) {
		this.tourDays = tourDays;
	}
	public Integer getGuaranteedCount() {
		return guaranteedCount;
	}
	public void setGuaranteedCount(Integer guaranteedCount) {
		this.guaranteedCount = guaranteedCount;
	}
	public Integer getFullPeopleCount() {
		return fullPeopleCount;
	}
	public void setFullPeopleCount(Integer fullPeopleCount) {
		this.fullPeopleCount = fullPeopleCount;
	}
	public Integer getClickCount() {
		return clickCount;
	}
	public void setClickCount(Integer clickCount) {
		this.clickCount = clickCount;
	}
	public Integer getContent() {
		return content;
	}
	public void setContent(Integer content) {
		this.content = content;
	}
	
	@Override
	public String toString() {
		return "GroupTourBean [tourNo=" + tourNo + ", tag=" + tag + ", country=" + country + ", tourName=" + tourName
				+ ", destination=" + destination + ", tourDays=" + tourDays + ", guaranteedCount=" + guaranteedCount
				+ ", fullPeopleCount=" + fullPeopleCount + ", clickCount=" + clickCount + ", content=" + content + "]";
	}
	
	
	
}
