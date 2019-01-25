package model.rate;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.userInfo.UserInfoBean;


@Service
@Transactional
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
	

	public List<RateNoticeBean> findAll(RateNoticeBean bean) {

		List<RateNoticeBean> result = rateNoticeDAO.findAll();

		return result;
	}
	
	public List<RateNoticeBean> findByPrimaryKey(String accountName) {
//		Map<String, List<?>> map = new HashMap<String, List<?>>();;
		List<RateNoticeBean> result = rateNoticeDAO.findByAccountName(accountName);
		
		return result;
		
	}
	
	public RateBean findByPrimaryKey1(String accountName) {
//		Map<String, List<?>> map = new HashMap<String, List<?>>();;
		RateBean result = rateNoticeDAO.findA(accountName);
		
		return result;
		
	}

}
