package model.ticket;

import java.io.IOException;
import java.util.List;

public interface TicketInfoDAO {

	public abstract TicketInfoBean findByPrimaryKey(Integer ticketNo);

	public abstract List<TicketInfoBean> findAll();

	public abstract TicketInfoBean create(TicketInfoBean bean);

	public abstract TicketInfoBean update(TicketInfoBean bean);
	
//	public abstract TicketInfoBean update(Integer ticketNo, String ticketName, Integer validity,
//			Integer adultTicketPrice, Integer childTicketPrice, Integer adultTicketSellQ, Integer childTicketSellQ,
//			Integer adultTicketSelledQ, Integer childTicketSelledQ, String country, String category,
//			String productFeatures, String ticketPicture, String ticketDescription, String traffic_information,
//			String special_restrictions, String googleAddressOrName);

	public abstract TicketInfoBean qupdate(TicketInfoBean bean);
	
	public abstract boolean remove(Integer ticketNo);
	
	public abstract List<TicketInfoBean> searchByCountry(String country);
	
	public abstract List<TicketInfoBean>searchByTicketName(Integer ticketNo);
	
	public abstract List<TicketInfoBean> findByTicketOrderList(List<TicketOrderInfoBean> list);
	
	public abstract String DLticketInfo(String path) throws IOException;
	
	public abstract String UPticketInfo(String path) throws IOException;
	
	public abstract TicketInfoBean findUP(Integer ticketNo);
	
	public abstract List<TicketInfoBean> findAllUp();

}
