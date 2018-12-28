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
	private String username	;
	private String currency;
	private Double targetRate;
	@Override
	public String toString() {
		return "RateNoticeBean [serial=" + serial + ", username=" + username + ", currency=" + currency
				+ ", targetRate=" + targetRate + "]";
	}
	public Integer getSerial() {
		return serial;
	}
	public void setSerial(Integer serial) {
		this.serial = serial;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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

}
