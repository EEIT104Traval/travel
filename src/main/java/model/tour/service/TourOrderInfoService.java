package model.tour.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.hotel.HotelOrderDetailsService;
import model.ticket.TicketInfoDAO;
import model.ticket.TicketOrderInfoService;
import model.tour.GroupTourBean;
import model.tour.TourBatchBean;
import model.tour.TourOrderInfoBean;
import model.tour.dao.GroupTourDAO;
import model.tour.dao.TourBatchDAO;
import model.tour.dao.TourOrderInfoDAO;
import model.userInfo.UserInfoDAO;

@Service
public class TourOrderInfoService {

	@Autowired
	private UserInfoDAO userInfoDAO ;
	@Autowired
	private GroupTourDAO groupTourDAO;
	@Autowired
	private TourBatchDAO tourBatchDAO;
	@Autowired
	private TourOrderInfoService tourOrderInfoService;
	@Autowired
	private TourOrderInfoDAO toDAO ;

	
	public List<TourOrderInfoBean> foundOrderaccountName(String accountName) {

		List<TourOrderInfoBean> result = null;
		result = toDAO.findOrderaccountName(accountName);

		return result;
	}
	
	
	
	public Map<String, List<?>> findBuyMonth (Integer month) {
		
		Map<String, List<?>> map = new HashMap<String, List<?>>();
		
//		List<TourOrderInfoBean> result = toDAO.findBuyMonth(month);
		
		List<TourOrderInfoBean> tourInfo = toDAO.findBuyMonth(month);
		List<TourBatchBean> tourBatch = tourBatchDAO.findByTourOrderList(tourInfo);
		List<GroupTourBean> tourList = groupTourDAO.findByTourBatchList(tourBatch);
		
		System.out.println(tourInfo);
		System.out.println(tourBatch);
		System.out.println(tourList);
		System.out.println("===========================");
		
		for (GroupTourBean groupTourBean : tourList) {
			for (TourBatchBean tourBatchBean : tourBatch) {
				for (TourOrderInfoBean tourOrder : tourInfo) {

					if ((groupTourBean.getTourNo().equals(tourBatchBean.getTourNo()))
							&& (tourBatchBean.getSerialNo().equals(tourOrder.getSerialNo()))) {

						tourBatchBean.setTourName(groupTourBean.getTourName());
						tourOrder.setTourName(tourBatchBean.getTourName());
						tourBatchBean.setCountry(groupTourBean.getCountry());
						tourOrder.setCountry(tourBatchBean.getCountry());
						System.out.println(tourOrder);
					}
					continue;
				}
			}
		}
		if (tourInfo.size() > 0) {
			map.put("TourOrderInfoBean", tourInfo);
		}
		
		
		return map;
	}
}
