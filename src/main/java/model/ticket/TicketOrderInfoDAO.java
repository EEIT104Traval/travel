package model.ticket;

import java.sql.Date;
import java.util.List;

public interface TicketOrderInfoDAO {

	
	public abstract TicketOrderInfoBean findByPrimaryKey(Integer ticketOrderNO);
	
	public abstract List<TicketOrderInfoBean>findAll();
	
	//買票
	public abstract TicketOrderInfoBean create(TicketOrderInfoBean bean);
	//改數量	
	public abstract TicketOrderInfoBean update(Integer ticketOrderNO,String username,
			Integer ticketNo,Date orderDate,Date useDate,Integer adultTicketCount,
			Integer childTicketCount,String recevingContact,String recevingAddress,
			Integer recevingPhone,Integer totalPrice);
	
	//取消購買票券
	public abstract boolean remove(Integer ticketOrderNO);
	
}
