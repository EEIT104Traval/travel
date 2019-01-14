package model.rate;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RateService {
	@Autowired
	private RateDAO rateDao = null;
	
	
	public List<RateBean> select() {
		List<RateBean> result = null;
		 
		result = rateDao.findNew(); 
		System.out.println("有連到service");
		return result;
	}

	
}
