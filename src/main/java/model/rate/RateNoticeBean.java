package model.rate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "RateNotice")
public class RateNoticeBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer serial;
	private String accountName;
	private String currency;
	private Double targetRate;
	private java.util.Date deadline;
	private java.sql.Timestamp registerDate;
	
	@Override
	public String toString() {
		return "RateNoticeBean [serial=" + serial + ", accountName=" + accountName + ", currency=" + currency
				+ ", targetRate=" + targetRate + ", deadline=" + deadline + ", registerDate=" + registerDate + "]";
	}
	public Integer getSerial() {
		return serial;
	}
	public void setSerial(Integer serial) {
		this.serial = serial;
	}
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public Double getTargetRate() {
		return targetRate;
	}
	public void setTargetRate(Double targetRate) {
		this.targetRate = targetRate;
	}
	public java.util.Date getDeadline() {
		return deadline;
	}
	public void setDeadline(java.util.Date deadline) {
		this.deadline = deadline;
	}
	public java.sql.Timestamp getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(java.sql.Timestamp registerDate) {
		this.registerDate = registerDate;
	}
	

}
