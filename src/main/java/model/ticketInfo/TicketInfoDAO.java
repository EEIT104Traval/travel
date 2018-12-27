package model.ticketInfo;

import java.util.List;

public interface TicketInfoDAO {

	public abstract TicketInfoBean findByPrimaryKey(Integer ticketNo);
	
	public abstract List<TicketInfoBean>findAll();
	
//	後台方法
	
//	public abstract ticketInfoBean create(ticketInfoBean bean);
//	public abstract ticketInfoBean update(Integer ticketNo, String ticketName,java.sql.Date validity,
//			Integer adultTicketPrice,Integer childTicketPrice,String country,String category,
//			String productFeatures,Byte[] ticketPicture,String ticketDescription,
//			String traffic_information,String special_restrictions,String googleAddressOrName);
//	public abstract ticketInfoBean remove(Integer ticketNo);
	
	
}
