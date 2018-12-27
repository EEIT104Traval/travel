package model.ticket;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import model.userInfo.UserInfoBean;

@Entity
@Table(name="TicketOrderInfo")
public class TicketOrderInfoBean {
	@ManyToOne
	@JoinColumn(
	name="username",
	referencedColumnName="username",
	insertable=false,
	updatable=false
			)
	private UserInfoBean userinfo;
	public UserInfoBean getUserInfo() {
		return userinfo;
	}
	public void setUserInfo(UserInfoBean userinfo) {
		this.userinfo = userinfo;
	}
	
	@Id
	private Integer ticketOrderNO;
	private String username;
	private Integer ticketNo;
	private Date orderDate;
	private Date useDate;
	private Integer adultTicketCount;
	private Integer childTicketCount;
	private String recevingContact;
	private String recevingAddress;
	private Integer recevingPhone;
	private Integer totalPrice;
	
	
	public UserInfoBean getUserinfo() {
		return userinfo;
	}
	public void setUserinfo(UserInfoBean userinfo) {
		this.userinfo = userinfo;
	}
	public Integer getTicketOrderNO() {
		return ticketOrderNO;
	}
	public void setTicketOrderNO(Integer ticketOrderNO) {
		this.ticketOrderNO = ticketOrderNO;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Integer getTicketNo() {
		return ticketNo;
	}
	public void setTicketNo(Integer ticketNo) {
		this.ticketNo = ticketNo;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public Date getUseDate() {
		return useDate;
	}
	public void setUseDate(Date useDate) {
		this.useDate = useDate;
	}
	public Integer getAdultTicketCount() {
		return adultTicketCount;
	}
	public void setAdultTicketCount(Integer adultTicketCount) {
		this.adultTicketCount = adultTicketCount;
	}
	public Integer getChildTicketCount() {
		return childTicketCount;
	}
	public void setChildTicketCount(Integer childTicketCount) {
		this.childTicketCount = childTicketCount;
	}
	public String getRecevingContact() {
		return recevingContact;
	}
	public void setRecevingContact(String recevingContact) {
		this.recevingContact = recevingContact;
	}
	public String getRecevingAddress() {
		return recevingAddress;
	}
	public void setRecevingAddress(String recevingAddress) {
		this.recevingAddress = recevingAddress;
	}
	public Integer getRecevingPhone() {
		return recevingPhone;
	}
	public void setRecevingPhone(Integer recevingPhone) {
		this.recevingPhone = recevingPhone;
	}
	public Integer getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Integer totalPrice) {
		this.totalPrice = totalPrice;
	}
	@Override
	public String toString() {
		return "TicketOrderInfoBean [userinfo=" + userinfo + ", ticketOrderNO=" + ticketOrderNO + ", username="
				+ username + ", ticketNo=" + ticketNo + ", orderDate=" + orderDate + ", useDate=" + useDate
				+ ", adultTicketCount=" + adultTicketCount + ", childTicketCount=" + childTicketCount
				+ ", recevingContact=" + recevingContact + ", recevingAddress=" + recevingAddress + ", recevingPhone="
				+ recevingPhone + ", totalPrice=" + totalPrice + "]";
	}
}