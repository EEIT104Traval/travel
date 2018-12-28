package model.rate;

import java.util.Arrays;

public class RateBean {
	private Byte[] flag;
	private String currency;
	private Double cashBuy;
	private Double cashSell;
	private Double spotBuy;
	private Double spotSell;
	private String country;
	@Override
	public String toString() {
		return "RateBean [flag=" + Arrays.toString(flag) + ", currency=" + currency + ", cashBuy=" + cashBuy
				+ ", cashSell=" + cashSell + ", spotBuy=" + spotBuy + ", spotSell=" + spotSell + ", country=" + country
				+ "]";
	}
	public Byte[] getFlag() {
		return flag;
	}
	public void setFlag(Byte[] flag) {
		this.flag = flag;
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
