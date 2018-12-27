package model.ticket;

import java.sql.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public interface TicketInfoDAO {

	public abstract TicketInfoBean findByPrimaryKey(Integer ticketNo);

	public abstract List<TicketInfoBean> findAll();

//	後台專用
	public abstract TicketInfoBean findByticketName(String ticketName);

	public abstract TicketInfoBean findByticketDate(Date validity);

	public abstract TicketInfoBean findByticketCountry(String country);

	public abstract TicketInfoBean create(TicketInfoBean bean);

	public abstract TicketInfoBean update(Integer ticketNo, String ticketName, java.sql.Date validity,
			Integer adultTicketPrice, Integer childTicketPrice, Integer adultTicketSellQ, Integer childTicketSellQ,
			Integer adultTicketSelledQ, Integer childTicketSelledQ, String country, String category,
			String productFeatures, Byte[] ticketPicture, String ticketDescription, String traffic_information,
			String special_restrictions, String googleAddressOrName);

	public abstract TicketInfoBean remove(Integer ticketNo);

}
