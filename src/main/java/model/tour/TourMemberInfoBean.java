package model.tour;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TourMemberInfo")
public class TourMemberInfoBean implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	private Integer orderNo;
	@Id
	private Integer purchaseOrder;
	
	private String fullName;
	private String passport;
	private String sex;
	private Integer price;
	private String passenger;
	
	@Override
	public String toString() {
		return "TourMemberInfoBean [orderNo=" + orderNo + ", purchaseOrder=" + purchaseOrder + ", fullName=" + fullName
				+ ", passport=" + passport + ", sex=" + sex + ", price=" + price + ", passenger=" + passenger + "]";
	}
	
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
	public Integer getPurchaseOrder() {
		return purchaseOrder;
	}
	public void setPurchaseOrder(Integer purchaseOrder) {
		this.purchaseOrder = purchaseOrder;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getPassport() {
		return passport;
	}
	public void setPassport(String passport) {
		this.passport = passport;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
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