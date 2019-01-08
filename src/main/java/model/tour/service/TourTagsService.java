package model.tour.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.tour.dao.TourTagsDAO;

@Service
public class TourTagsService {
	@Autowired
	private TourTagsDAO tourTagsDAO = null ;
	
	public List<String> findTags(){
		List<String> ft = tourTagsDAO.findTags();
		return ft;
	 }
}
