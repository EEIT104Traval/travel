package model.tour.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.tour.TourOrderInfoBean;
import model.tour.dao.TourOrderInfoDAO;

@Service
public class TourOrderInfoService {

	@Autowired
	private TourOrderInfoDAO tourOrderInfoDAO = null;
	
	public List<TourOrderInfoBean> foundOrderaccountName(String accountName) {

		List<TourOrderInfoBean> result = null;
		result = tourOrderInfoDAO.findOrderaccountName(accountName);

		return result;
	}
}
