package model.ticket;

import java.io.IOException;
import java.util.List;

public interface TicketInfoDAO {

	public abstract TicketInfoBean findByPrimaryKey(Integer ticketNo);

	public abstract List<TicketInfoBean> findAll();

	public abstract TicketInfoBean create(TicketInfoBean bean);

	public abstract TicketInfoBean update(TicketInfoBean bean);

	public abstract TicketInfoBean qupdate(TicketInfoBean bean);
	
	public abstract boolean remove(Integer ticketNo);
	
	public abstract List<TicketInfoBean> searchByCountry(String country);
	
	public abstract List<TicketInfoBean>searchByTicketName(Integer ticketNo);
	
	public abstract List<TicketInfoBean> findByTicketOrderList(List<TicketOrderInfoBean> list);
	
	public abstract String DLticketInfo(String path) throws IOException;
	
	public abstract String UPticketInfo(String path) throws IOException;
	
	public abstract List<TicketInfoBean> findAllUp();

}
