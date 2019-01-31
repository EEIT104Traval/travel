package model.tour.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.tour.GroupTourBean;
import model.tour.TourBatchBean;
import model.tour.TourOrderInfoBean;
import model.tour.dao.GroupTourDAO;
import model.tour.dao.TourBatchDAO;
import model.tour.dao.TourOrderInfoDAO;

@Service
@Transactional
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
		
		return tourInfo;
	}
}
