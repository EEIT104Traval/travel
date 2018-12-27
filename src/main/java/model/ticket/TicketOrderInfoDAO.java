package model.ticket;

import java.sql.Date;
import java.util.List;

public interface TicketOrderInfoDAO {

	
	public abstract TicketOrderInfoBean findByPrimaryKey(Integer ticketOrderNO);
	
	public abstract List<TicketOrderInfoBean>findAll();
	
	public abstract TicketOrderInfoBean findByadultTicketCount();
	
	public abstract TicketOrderInfoBean findBychildTicketCount();
	
	//取消購買票券
	public abstract boolean update(Integer ticketOrderNO,String username,
			Integer ticketNo,Date orderDate,Date useDate,Integer adultTicketCount,
			Integer childTicketCount,String recevingContact,String recevingAddress,
			Integer recevingPhone,Integer totalPrice);
	
	
	//	後台專用
	
}
