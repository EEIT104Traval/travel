package model.tour;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TourTags")
public class TourTagsBean {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)  
	private Integer serialNo;
	private String tourNo;
	private String tag;
	
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
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	@Override
	public String toString() {
		return "TourTagsBean [serialNo=" + serialNo + ", tourNo=" + tourNo + ", Tag=" + tag + "]";
	}
	
	
}
