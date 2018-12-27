package model.tour;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.springframework.beans.factory.annotation.Autowired;

@Entity
@Table(name="TourMemberInfo")
public class TourMemberInfoBean {
	@Id
	private Integer serialNo;
	private Integer purchaseOrder;
	private String fName;
	private String lname;
	private Integer price;
	private String passenger;
	
	@Override
	public String toString() {
		return "TourMemberInfoBean [serialNo=" + serialNo + ", purchaseOrder=" + purchaseOrder + ", fName=" + fName
				+ ", lname=" + lname + ", price=" + price + ", passenger=" + passenger + "]";
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
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
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