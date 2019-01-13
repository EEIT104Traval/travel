package model.ticket;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TicketOrderInfoService {

	@Autowired
	private TicketOrderInfoDAO ticketOrderInfoDAO = null;
	
	
	public List<TicketOrderInfoBean> select(TicketOrderInfoBean bean) {
		List<TicketOrderInfoBean> result = null;
		if (bean != null && bean.getTicketOrderNO() != 0) {
			TicketOrderInfoBean tib = ticketOrderInfoDAO.findByPrimaryKey(bean.getTicketOrderNO());
			if (tib != null) {
				result = new ArrayList<TicketOrderInfoBean>();
				result.add(tib);
			} else {
				result = ticketOrderInfoDAO.findAll();
			}
		}
		return result;
	}

	public List<TicketOrderInfoBean> foundOrderaccountName(String accountName) {

		List<TicketOrderInfoBean> result = null;
		result = ticketOrderInfoDAO.finduser(accountName);
        
		return result;
	}

	public TicketOrderInfoBean insert(TicketOrderInfoBean bean) {
		TicketOrderInfoBean result = null;
		if (bean != null) {
			result = ticketOrderInfoDAO.create(bean);
		}
		return result;
	}

	public TicketOrderInfoBean update(TicketOrderInfoBean bean) {
		TicketOrderInfoBean result = null;
		if (bean != null) {
			result = ticketOrderInfoDAO.update(bean.getTicketOrderNO(), bean.getAccountName(), bean.getTicketNo(),
					bean.getOrderDate(), bean.getUseDate(), bean.getAdultTicketCount(), bean.getChildTicketCount(),
					bean.getRecevingContact(), bean.getRecevingAddress(), bean.getRecevingPhone(),
					bean.getTotalPrice());
		}
		return result;
	}

	public boolean delete(TicketOrderInfoBean bean) {
		boolean result = false;
		if (bean != null) {
			result = ticketOrderInfoDAO.remove(bean.getTicketOrderNO());
		}
		return result;
	}
}
