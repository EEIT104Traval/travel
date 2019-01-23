package model.tour.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.tour.GroupTourBean;
import model.tour.TourBatchBean;
import model.tour.dao.GroupTourDAO;
import model.tour.dao.TourBatchDAO;

@Service
@Transactional
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
		
		if(no.isEmpty()) {
			List<TourBatchBean> ll =  new ArrayList<TourBatchBean>();
			return ll;
		}		
//		int rows =  no.size();	
//		System.out.println("no=>"+no+", C=>"+country+",D=>"+checkin_date+", D2=>"+checkout_date);
		List<TourBatchBean> tb = tourBatchDAO.findByCountry(no, checkin_date, checkout_date);
//		System.out.println("tb==>"+tb);
//		System.out.println(tb.get(0).getGroupTourBean().getTourName());
		return tb;
	}
	
}
