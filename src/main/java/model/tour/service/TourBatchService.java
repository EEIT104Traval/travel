package model.tour.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.tour.TourBatchBean;
import model.tour.dao.TourBatchDAO;

@Service
@Transactional
public class TourBatchService {
	@Autowired
	private TourBatchDAO tourBatchDAO;
	
	public TourBatchBean select(String tourNo) {
		List<TourBatchBean> result = tourBatchDAO.findTourNo(tourNo);
		TourBatchBean TB = result.get(0);
		return TB;
	}
	
	
}
