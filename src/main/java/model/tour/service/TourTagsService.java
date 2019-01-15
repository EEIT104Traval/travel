package model.tour.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.tour.GroupTourBean;
import model.tour.dao.GroupTourDAO;
import model.tour.dao.TourTagsDAO;

@Service
public class TourTagsService {
	@Autowired
	private TourTagsDAO tourTagsDAO  ;
	@Autowired
	private GroupTourDAO groupTour ;
	public List<GroupTourBean> findByTags(String tag){
		List<String> ft = tourTagsDAO.findByTag(tag);
		Integer i =ft.size();//取得共幾筆TOUR有這個TAG
		
		List<GroupTourBean> tour = new ArrayList<GroupTourBean>();
		for(int j=0 ; j<i;j++ ) {
			GroupTourBean t = groupTour.findByPrimaryKey(ft.get(j));	
			tour.add(t);
		}
		
		return tour;
	 }
	
}
