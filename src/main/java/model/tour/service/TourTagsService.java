package model.tour.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.tour.TourTagsBean;
import model.tour.dao.GroupTourDAO;
import model.tour.dao.TourTagsDAO;

@Service
public class TourTagsService {
	@Autowired
	private TourTagsDAO tourTagsDAO  ;
	private GroupTourDAO groupTour ;
	public Integer findByTags(String tag){
		List<TourTagsBean> ft = tourTagsDAO.findByTag(tag);
		Integer i =ft.size();
		return i;
	 }
	
}
