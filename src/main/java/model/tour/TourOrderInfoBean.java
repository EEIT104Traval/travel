package model.tour;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TourOrderInfo")
public class TourOrderInfoBean {
	@Id
	private Integer serialNo;
	private String username;
	private String tourNo;
	private Integer quantity;
	private Integer total;
	private String orderStatus;
	public Integer getSerialNo() {
		return serialNo;
	}
	public void setSerialNo(Integer serialNo) {
		this.serialNo = serialNo;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTourNo() {
		return tourNo;
	}
	public void setTourNo(String tourNo) {
		this.tourNo = tourNo;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	@Override
	public String toString() {
		return "TourOrderInfoBean [serialNo=" + serialNo + ", username=" + username + ", tourNo=" + tourNo
				+ ", quantity=" + quantity + ", total=" + total + ", orderStatus=" + orderStatus + "]";
	}
	
	
	
}