package model.tour;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TourMemberInfo")
public class TourMemberInfoBean implements Serializable{
	
	@Id
	private Integer serialNo;
	@Id
	private Integer purchaseOrder;
	
	private String fName;
	private String lName;
	private Integer price;
	private String passenger;

	@Override
	public String toString() {
		return "TourMemberInfoBean [serialNo=" + serialNo + ", purchaseOrder=" + purchaseOrder + ", fName=" + fName
				+ ", lname=" + lName + ", price=" + price + ", passenger=" + passenger + "]";
	}

	public Integer getSerialNo() {
		return serialNo;
	}

	public void setSerialNo(Integer serialNo) {
		this.serialNo = serialNo;
	}

	public Integer getPurchaseOrder() {
		return purchaseOrder;
	}

	public void setPurchaseOrder(Integer purchaseOrder) {
		this.purchaseOrder = purchaseOrder;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getPassenger() {
		return passenger;
	}

	public void setPassenger(String passenger) {
		this.passenger = passenger;
	}
}