package model.ticket;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

@Service
public class TicketInfoService {

	@Autowired
	private TicketInfoDAO ticketInfoDAO = null;
	@Autowired
	private TicketOrderInfoDAO ticketOrderInfoDAO = null;

	
	public SimpleDateFormat sdFormat = new SimpleDateFormat("yyyy/MM/dd");
	
	
	public List<TicketInfoBean> select(TicketInfoBean bean) {
		List<TicketInfoBean> result = null;
		if (bean != null && bean.getTicketNo() != 0) {
			TicketInfoBean tib = ticketInfoDAO.findByPrimaryKey(bean.getTicketNo());
			if (tib != null) {
				result = new ArrayList<TicketInfoBean>();
				result.add(tib);
			} else {
				result = ticketInfoDAO.findAll();
			}
		}
		return result;
	}

	public TicketInfoBean insert(TicketInfoBean bean) {
		TicketInfoBean result = null;
		if (bean != null) {
			result = ticketInfoDAO.create(bean);
		}
		return result;
	}

	public TicketInfoBean update(TicketInfoBean bean) {
		TicketInfoBean result = null;
		if (bean != null) {
			result = ticketInfoDAO.update(bean.getTicketNo(), bean.getTicketName(), bean.getValidity(),
					bean.getAdultTicketPrice(), bean.getChildTicketPrice(), bean.getAdultTicketSellQ(),
					bean.getChildTicketSellQ(), bean.getAdultTicketSelledQ(), bean.getChildTicketSelledQ(),
					bean.getCountry(), bean.getCategory(), bean.getProductFeatures(), bean.getTicketPicture(),
					bean.getTicketDescription(), bean.getTraffic_information(), bean.getSpecial_restrictions(),
					bean.getGoogleAddressOrName());
		}
		return result;
	}

	public boolean qupdate(String accountName ,Integer ticketNo, Integer adultTicketSellQ, Integer adultTicketPrice) throws ParseException {
		TicketInfoBean bean = new TicketInfoBean();
		TicketOrderInfoBean bean1 = new TicketOrderInfoBean();
		if (ticketNo != null) {
			TicketInfoBean TI = ticketInfoDAO.findByPrimaryKey(ticketNo);
			Integer Q = TI.getAdultTicketSellQ();
			Integer SaveQ = adultTicketSellQ - Q ;
			TI.setAdultTicketSellQ(SaveQ);
			TI.setAdultTicketSelledQ(TI.getAdultTicketSelledQ()+adultTicketSellQ);
			ticketInfoDAO.qupdate(TI);
			//--------------------------(↑購買更改庫存數量 )(↓購買更改訂單表格)---------------------------		
			TicketOrderInfoBean TOI = ticketOrderInfoDAO.create(bean1);
			TOI.setAccountName(accountName);
			TOI.setTicketNo(ticketNo);
			
			Date date = new Date();
			String strDate = sdFormat.format(date);
			Date xx = sdFormat.parse(strDate);
			TOI.setOrderDate(xx);
			TOI.setAdultTicketCount(adultTicketSellQ);
			Integer TT = adultTicketSellQ * adultTicketPrice;
			TOI.setTotalPrice(TT);
		
			}
		return false;
	}

	public boolean delete(TicketInfoBean bean) {
		boolean result = false;
		if (bean != null) {
			result = ticketInfoDAO.remove(bean.getTicketNo());
		}
		return result;
	}

	public List<TicketInfoBean> searchCountry(String country) {
		List<TicketInfoBean> result = null;
		if (!StringUtils.isEmpty(country)) {
//		if (country != null || country.length() != 0) {
			List<TicketInfoBean> tib = ticketInfoDAO.searchByCountry(country);
			if (tib != null) {
				result = new ArrayList<TicketInfoBean>();
				result.addAll(tib);
			}
		} else {
			result = ticketInfoDAO.findAll();
		}
		return result;
	}
}
