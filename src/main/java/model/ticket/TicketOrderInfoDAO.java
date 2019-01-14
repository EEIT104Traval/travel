package model.ticket;

import java.util.List;

public interface TicketOrderInfoDAO {

	
	public abstract TicketOrderInfoBean findByPrimaryKey(Integer ticketOrderNO);
	
	public abstract List<TicketOrderInfoBean>findAll();
	
	//買票
	public abstract TicketOrderInfoBean create(TicketOrderInfoBean bean);
	//改數量	
	public abstract TicketOrderInfoBean update(Integer ticketOrderNO,String accountName,
			Integer ticketNo,java.util.Date orderDate,java.util.Date useDate,Integer adultTicketCount,
			Integer childTicketCount,String recevingContact,String recevingAddress,
			String recevingPhone,Integer totalPrice);
	
	//取消購買票券
	public abstract boolean remove(Integer ticketOrderNO);

	//查詢訂單  給使用者名查出多少票券
	public abstract List<TicketOrderInfoBean> finduser(String accountName);
	//給使用者名子取出票券號碼
	public abstract TicketOrderInfoBean fundNumber(String accountName);
	
}
