package model.tour.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.tour.GroupTourBean;
import model.tour.dao.GroupTourDAO;

@Service
public class GroupTourService {
	@Autowired
	private GroupTourDAO groupTourDAO = null ;
	

	
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
	
	public GroupTourBean select(String tourNo) {
		GroupTourBean temp = groupTourDAO.findByPrimaryKey(tourNo);
		return temp;
	}
	
}
