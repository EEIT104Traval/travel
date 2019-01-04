package model.ticket;

import java.util.List;

public interface TicketInfoDAO {

	public  abstract TicketInfoBean findByPrimaryKey(Integer ticketNo);
	
	public abstract TicketInfoBean findByTicketName(String ticketName);
	
	public abstract TicketInfoBean findByTicketCountry(String country);
	
	public abstract TicketInfoBean findByTicketCategory(String category);

	public abstract List<TicketInfoBean> findAll();

	public abstract TicketInfoBean create(TicketInfoBean bean);

	public abstract TicketInfoBean update(Integer ticketNo, String ticketName, Integer validity,
			Integer adultTicketPrice, Integer childTicketPrice, Integer adultTicketSellQ, Integer childTicketSellQ,
			Integer adultTicketSelledQ, Integer childTicketSelledQ, String country, String category,
			String productFeatures, String ticketPicture, String ticketDescription, String traffic_information,
			String special_restrictions, String googleAddressOrName);

	public abstract boolean remove(Integer ticketNo);
	
	

}
