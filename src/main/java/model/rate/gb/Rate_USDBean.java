package model.rate.gb;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Rate_USD")
public class Rate_USDBean {
	@Id
	private java.util.Date updateTime;
	private String currency;
	private Double cashBuy;
	private Double cashSell;
	private Double spotBuy;
	private Double spotSell;
	private String country;
	@Override
	public String toString() {
		return "Rate_USDBean [updateTime=" + updateTime + ", currency=" + currency + ", cashBuy=" + cashBuy
				+ ", cashSell=" + cashSell + ", spotBuy=" + spotBuy + ", spotSell=" + spotSell + ", country=" + country
				+ "]";
	}
	public java.util.Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(java.util.Date updateTime) {
		this.updateTime = updateTime;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
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
