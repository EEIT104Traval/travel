package model.tour;

import java.io.Serializable;
import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TourPicture")
public class TourPictureBean implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	private String tourNo;
	@Id
	private Integer tpicNo;
	private String pictitle;
	private String picDetail;
	private String pic;
	
	@Override
	public String toString() {
		return "TourPictureBean [tourNo=" + tourNo + ", tpicNo=" + tpicNo + ", pictitle=" + pictitle + ", picDetail="
				+ picDetail + ", pic=" + pic + "]";
	}

	public String getTourNo() {
		return tourNo;
	}

	public void setTourNo(String tourNo) {
		this.tourNo = tourNo;
	}

	public Integer getTpicNo() {
		return tpicNo;
	}

	public void setTpicNo(Integer tpicNo) {
		this.tpicNo = tpicNo;
	}

	public String getPictitle() {
		return pictitle;
	}

	public void setPictitle(String pictitle) {
		this.pictitle = pictitle;
	}

	public String getPicDetail() {
		return picDetail;
	}

	public void setPicDetail(String picDetail) {
		this.picDetail = picDetail;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}
	
}