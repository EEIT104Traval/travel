package model.ticket;

import java.io.IOException;
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

	public List<TicketInfoBean> findAll(){
		List<TicketInfoBean> result = ticketInfoDAO.findAll();
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

	
	public boolean delete(TicketInfoBean bean) {
		boolean result = false;
		if (bean != null) {
			result = ticketInfoDAO.remove(bean.getTicketNo());
		}
		return result;
	}

	public boolean qupdate(String accountName, Integer ticketNo, Integer adultTicketSellQ, Integer adultTicketPrice)
			throws ParseException {
//		TicketInfoBean bean = new TicketInfoBean();
		TicketOrderInfoBean bean = new TicketOrderInfoBean();
		if (ticketNo != null) {
			TicketInfoBean TI = ticketInfoDAO.findByPrimaryKey(ticketNo);
			Integer Q = TI.getAdultTicketSellQ();
			Integer SaveQ = Q - adultTicketSellQ;
			TI.setAdultTicketSellQ(SaveQ);
			TI.setAdultTicketSelledQ(TI.getAdultTicketSelledQ() + adultTicketSellQ);
			ticketInfoDAO.qupdate(TI);
			// --------------------------(↑購買更改庫存數量 )(↓購買更改訂單表格)---------------------------
			TicketOrderInfoBean TOI = ticketOrderInfoDAO.create(bean);
			TOI.setAccountName(accountName);
			TOI.setTicketNo(ticketNo);
			Date date = new Date();
			String strDate = sdFormat.format(date);
			Date TD = sdFormat.parse(strDate);
			TOI.setOrderDate(TD);
			TOI.setAdultTicketCount(adultTicketSellQ);
			Integer TT = adultTicketSellQ * adultTicketPrice;
			TOI.setTotalPrice(TT);

			return true;
		} else {
			return false;
		}
	}

	public  String DLticketInfo(String path) throws IOException{
		String x = ticketInfoDAO.DLticketInfo(path);
		
		return x;
	}
	
	
	public  String UPticketInfo(String path) throws IOException{
		String x = ticketInfoDAO.UPticketInfo(path);
		
		return x;
	}	
	
	public List<TicketInfoBean> searchCountry(String country) {
		List<TicketInfoBean> result = null;
		if (!StringUtils.isEmpty(country)) {
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
	
	public List<TicketInfoBean> searchByTicketName(Integer ticketNo) {
		List<TicketInfoBean> result = null;
		if (!StringUtils.isEmpty(ticketNo)) {
			List<TicketInfoBean> tib = ticketInfoDAO.searchByTicketName(ticketNo);
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
