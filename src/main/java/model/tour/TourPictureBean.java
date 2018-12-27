package model.tour;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TourPicture")
public class TourPictureBean {
	@Id
	private String tourNo;
	private String tpicName;
	private String picDetail;
	private Byte[] pic;
	
	@Override
	public String toString() {
		return "TourPictureBean [tourNo=" + tourNo + ", tpicName=" + tpicName + ", picDetail=" + picDetail + ", pic="
				+ Arrays.toString(pic) + "]";
	}
	
	public String getTourNo() {
		return tourNo;
	}
	public void setTourNo(String tourNo) {
		this.tourNo = tourNo;
	}
	public String getTpicName() {
		return tpicName;
	}
	public void setTpicName(String tpicName) {
		this.tpicName = tpicName;
	}
	public String getPicDetail() {
		return picDetail;
	}
	public void setPicDetail(String picDetail) {
		this.picDetail = picDetail;
	}
	public Byte[] getPic() {
		return pic;
	}
	public void setPic(Byte[] pic) {
		this.pic = pic;
	}
}