package model.tour.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.tour.TourPictureBean;
import model.tour.dao.TourPictureDAO;

@Service
public class TourPictureService {

	@Autowired
	private TourPictureDAO tourPictureDAO;
	
	public List<TourPictureBean> select(String tourNo) {
		List<TourPictureBean> result = tourPictureDAO.findTourNo(tourNo);
		return result;
	}
	
}
