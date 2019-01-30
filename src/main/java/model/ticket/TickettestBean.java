package model.ticket;

public class TickettestBean {
	
	private String ticketOrderNO;
	private String accountName;
	private String ticketNo;
	private String orderDate;
	private String useDate;
	private String adultTicketCount;
	private String childTicketCount;
	private String recevingContact;
	private String recevingAddress;
	private String recevingPhone;
	private String totalPrice;
	private String ticketName;
	
	
	@Override
	public String toString() {
		return "TickettestBean [ticketOrderNO=" + ticketOrderNO + ", accountName=" + accountName + ", ticketNo="
				+ ticketNo + ", orderDate=" + orderDate + ", useDate=" + useDate + ", adultTicketCount="
				+ adultTicketCount + ", childTicketCount=" + childTicketCount + ", recevingContact=" + recevingContact
				+ ", recevingAddress=" + recevingAddress + ", recevingPhone=" + recevingPhone + ", totalPrice="
				+ totalPrice + ", ticketName=" + ticketName + "]";
	}
	public String getTicketOrderNO() {
		return ticketOrderNO;
	}
	public void setTicketOrderNO(String ticketOrderNO) {
		this.ticketOrderNO = ticketOrderNO;
	}
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	public String getTicketNo() {
		return ticketNo;
	}
	public void setTicketNo(String ticketNo) {
		this.ticketNo = ticketNo;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getUseDate() {
		return useDate;
	}
	public void setUseDate(String useDate) {
		this.useDate = useDate;
	}
	public String getAdultTicketCount() {
		return adultTicketCount;
	}
	public void setAdultTicketCount(String adultTicketCount) {
		this.adultTicketCount = adultTicketCount;
	}
	public String getChildTicketCount() {
		return childTicketCount;
	}
	public void setChildTicketCount(String childTicketCount) {
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
	public String getRecevingPhone() {
		return recevingPhone;
	}
	public void setRecevingPhone(String recevingPhone) {
		this.recevingPhone = recevingPhone;
	}
	public String getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getTicketName() {
		return ticketName;
	}
	public void setTicketName(String ticketName) {
		this.ticketName = ticketName;
	}
}
