package model.tour;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="userlike")
public class UserLikeBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) 
	private Integer serialNo;
	private String accountName;
	private String tourNo;
	
	
	@Override
	public String toString() {
		return "UserLikeBean [serialNo=" + serialNo + ", accountName=" + accountName + ", tourNo=" + tourNo + "]";
	}
	public Integer getSerialNo() {
		return serialNo;
	}
	public void setSerialNo(Integer serialNo) {
		this.serialNo = serialNo;
	}
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	public String getTourNo() {
		return tourNo;
	}
	public void setTourNo(String tourNo) {
		this.tourNo = tourNo;
	}
	
}
