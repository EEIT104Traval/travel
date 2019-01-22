package model.tour.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.tour.GroupTourBean;
import model.tour.TourBatchBean;
import model.tour.TourOrderInfoBean;
import model.tour.dao.GroupTourDAO;
import model.tour.dao.TourBatchDAO;
import model.tour.dao.TourOrderInfoDAO;

@Service
public class TourOrderInfoService {

	@Autowired
	private GroupTourDAO groupTourDAO;
	@Autowired
	private TourBatchDAO tourBatchDAO;
	@Autowired
	private TourOrderInfoDAO toDAO ;

	
	public List<TourOrderInfoBean> foundOrderaccountName(String accountName) {

		List<TourOrderInfoBean> result = null;
		result = toDAO.findOrderaccountName(accountName);

		return result;
	}
	
	
	
	public List<TourOrderInfoBean> findBuyMonth (Integer month) {

		List<TourOrderInfoBean> tourInfo = toDAO.findBuyMonth(month);
		List<TourBatchBean> tourBatch = tourBatchDAO.findByTourOrderList(tourInfo);
		List<GroupTourBean> tourList = groupTourDAO.findByTourBatchList(tourBatch);
				
		for (GroupTourBean groupTourBean : tourList) {
			for (TourBatchBean tourBatchBean : tourBatch) {
				for (TourOrderInfoBean tourOrder : tourInfo) {

					if ((groupTourBean.getTourNo().equals(tourBatchBean.getTourNo()))
							&& (tourBatchBean.getSerialNo().equals(tourOrder.getSerialNo()))) {

						tourBatchBean.setTourName(groupTourBean.getTourName());
						tourOrder.setTourName(tourBatchBean.getTourName());
						
						tourBatchBean.setCountry(groupTourBean.getCountry());
						tourOrder.setCountry(tourBatchBean.getCountry());
						
					}
					continue;
				}
			}
		}
		return tourInfo;
	}
}
