package model.rate;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class RateService {
	@Autowired
	private RateDAO rateDao = null;
	
	
	public List<RateBean> select() {
		List<RateBean> result = null;
		 
		result = rateDao.findNew(); 
//		System.out.println("有連到service");
		return result;
	}
	
	public RateBean create(RateBean bean) {
		RateBean result = null;
		if(bean != null) {
			result = rateDao.create(bean);
		}	
		return result;
		
	}
	
	public RateBean createRates(RateBean bean) {
		RateBean result = null;
		if(bean != null) {
			result = rateDao.createRates(bean);
		}	
		return result;
		
	}
	
}
