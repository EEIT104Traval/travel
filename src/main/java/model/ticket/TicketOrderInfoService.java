package model.ticket;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
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
	
	public TicketOrderInfoBean deleteorder (Integer ticketOrderNO) {
		TicketOrderInfoBean result = null;
		if (ticketOrderNO != null) {
			result = ticketOrderInfoDAO.removeOrder(ticketOrderNO);
		}
		return result;
	}
	
	
	public List<TickettestBean> findaccountName1(String accountName){
		
		List<?> list = ticketOrderInfoDAO.findaccountName1(accountName);
		TickettestBean bean = null;
		List<TickettestBean> result= new ArrayList<>();
		
		for (int i = 0; i < list.size(); i++) {
			Object[] obj = (Object[]) list.get(i);
			bean = new TickettestBean();
			for (int j = 0; j < obj.length; j++) {
				if( obj[j]!= null) {
					switch (j) {
					case 0:bean.setTicketName(obj[j].toString());
					case 1:bean.setTicketOrderNO((obj[j].toString()));
					case 2:bean.setAccountName(obj[j].toString());
					case 3:bean.setTicketNo(obj[j].toString());
					case 4:bean.setOrderDate(obj[j].toString());
					case 5:bean.setUseDate(obj[j].toString());
					case 6:bean.setAdultTicketCount(obj[j].toString());
					case 7:bean.setChildTicketCount(obj[j].toString());
					case 8:bean.setRecevingContact(obj[j].toString());
					case 9:bean.setRecevingAddress(obj[j].toString());
					case 10:bean.setRecevingPhone(obj[j].toString());
					case 11:bean.setTotalPrice(obj[j].toString());
					}
				}
			}
			result.add(bean);
		}
		System.out.println(result);
		return  result;
	}
}
