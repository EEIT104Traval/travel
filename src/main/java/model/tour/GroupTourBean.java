package model.tour;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="GroupTour")
public class GroupTourBean {
	@Id
	private String tourNo;	
	private String country;
	private String tourName;
	private String destination;
	private Integer tourDays;
	private Integer guaranteedCount;
	private Integer fullPeopleCount;
	private Integer clickCount;
	private String content;
	
	@OneToMany(
			cascade=CascadeType.REMOVE,
			mappedBy="tourNo"
	)
	private List<TourBatchBean> tourBatchBean;
	
	@OneToMany(
			cascade=CascadeType.REMOVE,
			mappedBy="tourNo"
	)
	private List<TourPictureBean> TourPictureBean;
	
	@OneToMany(
			cascade=CascadeType.REMOVE,
			mappedBy="tourNo"
	)
	private List<TourTagsBean> TourTagsBean;
	
	
	
	
	public String getTourNo() {
		return tourNo;
	}
	public void setTourNo(String tourNo) {
		this.tourNo = tourNo;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public List<TourBatchBean> getTourBatchBean() {
		return tourBatchBean;
	}
	public void setTourBatchBean(List<TourBatchBean> tourBatchBean) {
		this.tourBatchBean = tourBatchBean;
	}
	public List<TourPictureBean> getTourPictureBean() {
		return TourPictureBean;
	}
	public void setTourPictureBean(List<TourPictureBean> tourPictureBean) {
		TourPictureBean = tourPictureBean;
	}
	public List<TourTagsBean> getTourTagsBean() {
		return TourTagsBean;
	}
	public void setTourTagsBean(List<TourTagsBean> tourTagsBean) {
		TourTagsBean = tourTagsBean;
	}
	@Override
	public String toString() {
		return "GroupTourBean [tourNo=" + tourNo + ", country=" + country + ", tourName=" + tourName + ", destination="
				+ destination + ", tourDays=" + tourDays + ", guaranteedCount=" + guaranteedCount + ", fullPeopleCount="
				+ fullPeopleCount + ", clickCount=" + clickCount + ", content=" + content + ", tourBatchBean="
				+ tourBatchBean + ", TourPictureBean=" + TourPictureBean + ", TourTagsBean=" + TourTagsBean + "]";
	}
	

	
}
