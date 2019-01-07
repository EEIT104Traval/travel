package model.rate;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Rate")
public class RateBean {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer serial;
	private String currency;
	private java.util.Date updateTime;
	private Double cashBuy;
	private Double cashSell;
	private Double spotBuy;
	private Double spotSell;
	private String country;
	@Override
	public String toString() {
		return "RateBean [serial=" + serial + ", currency=" + currency + ", updateTime=" + updateTime + ", cashBuy="
				+ cashBuy + ", cashSell=" + cashSell + ", spotBuy=" + spotBuy + ", spotSell=" + spotSell + ", country="
				+ country + "]";
	}
	public Integer getSerial() {
		return serial;
	}
	public void setSerial(Integer serial) {
		this.serial = serial;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public java.util.Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(java.util.Date updateTime) {
		this.updateTime = updateTime;
	}
	public Double getCashBuy() {
		return cashBuy;
	}
	public void setCashBuy(Double cashBuy) {
		this.cashBuy = cashBuy;
	}
	public Double getCashSell() {
		return cashSell;
	}
	public void setCashSell(Double cashSell) {
		this.cashSell = cashSell;
	}
	public Double getSpotBuy() {
		return spotBuy;
	}
	public void setSpotBuy(Double spotBuy) {
		this.spotBuy = spotBuy;
	}
	public Double getSpotSell() {
		return spotSell;
	}
	public void setSpotSell(Double spotSell) {
		this.spotSell = spotSell;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	
}