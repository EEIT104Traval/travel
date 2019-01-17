package model.tour.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.tour.TourBatchBean;
import model.tour.dao.TourBatchDAO;
import model.userInfo.UserInfoBean;
import model.userInfo.dao.UserInfoDAOHibernate;

@Service
public class TourBuyService {
	@Autowired
	private TourBatchDAO tourBatchDao;
	@Autowired
	private UserInfoDAOHibernate userDao;
	
	public Map<String,Object> method(Integer serialNo,String accountName) {
		TourBatchBean tour = tourBatchDao.findByPrimaryKey(serialNo);
		UserInfoBean user = userDao.findByPrimaryKey(accountName);
		Map<String,Object> result = new HashMap<>();
		result.put("tour", tour);
		result.put("user", user);
		return result;
	}
}
