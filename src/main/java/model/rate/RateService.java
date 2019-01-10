package model.rate;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RateService {
	@Autowired
	private RateDAO rateDao = null;
	
//	public List<RateBean> select01(RateBean bean) {
//		List<RateBean> result = null;
//		if(bean!=null && bean.getSerial()!=0) {
//			RateBean temp = rateDao.findByPrimaryKey(bean.getSerial());
//			if(temp!=null) {
//				result = new ArrayList<RateBean>();
//				result.add(temp);
//			}
//		} else {
//			result = rateDao.findAll(); 
//		}
//		return result;
//	}
	
	public List<RateBean> select(RateBean bean) {
		List<RateBean> result = null;
		 
		result = rateDao.findAll(); 
		
		return result;
	}

	
}
