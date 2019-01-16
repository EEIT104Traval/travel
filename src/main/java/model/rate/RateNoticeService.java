package model.rate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.userInfo.UserInfoBean;


@Service
public class RateNoticeService {
	@Autowired
    private RateNoticeDAO rateNoticeDAO = null;
	
	public RateNoticeBean create(RateNoticeBean bean) {
		RateNoticeBean result = null;
		if(bean != null) {
			result = rateNoticeDAO.create(bean);
		}	
		return result;
		
	}

}
