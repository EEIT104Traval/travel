package model.ticket;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TicketInfoService {

	@Autowired
	private TicketInfoDAO ticketInfoDAO = null;

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

	public boolean delete(TicketInfoBean bean) {
		boolean result = false;
		if (bean != null) {
			result = ticketInfoDAO.remove(bean.getTicketNo());
		}
		return result;
	}

	public List<TicketInfoBean> searchCountry(String country) {
		List<TicketInfoBean> result = null;
		if (country != null  ) {
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
