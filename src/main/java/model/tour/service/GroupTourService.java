package model.tour.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.tour.GroupTourBean;
import model.tour.TourBatchBean;
import model.tour.dao.GroupTourDAO;
import model.tour.dao.TourBatchDAO;

@Service
public class GroupTourService {
	@Autowired
	private GroupTourDAO groupTourDAO ;
	@Autowired
	private TourBatchDAO tourBatchDAO ;
	

	
	public List<GroupTourBean> selectAll(){
		List<GroupTourBean> result = groupTourDAO.findAll();
//		if(bean!=null && bean.getTourNo()!="") {
//			GroupTourBean tour = groupTourDAO.findByPrimaryKey(bean.getTourNo());
//			if(tour!=null) {
//				result = new ArrayList<GroupTourBean>();
//				result.add(tour);
//			}			
//		}else {
			
//		}
		return result;
	}
	
	public List<GroupTourBean> findbyclick(){
		List<GroupTourBean> result = groupTourDAO.findByClick();
		return result;
	}
	public Long countAll() {
		Long count = groupTourDAO.countAll();
		return count;
	}
	
	public GroupTourBean select(String tourNo) {
		GroupTourBean temp = groupTourDAO.findByPrimaryKey(tourNo);
		return temp;
	}
	
	public List<TourBatchBean> findTourByNO(String country, Date checkin_date, Date checkout_date) {
		List<String> no = groupTourDAO.findByCountry(country);
		
//		int rows =  no.size();		
		List<TourBatchBean> tb = tourBatchDAO.findByCountry(no, checkin_date, checkout_date);
		return tb;
	}
	
}
