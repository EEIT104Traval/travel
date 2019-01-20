package model.tour.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.tour.TourBatchBean;
import model.tour.TourMemberInfoBean;
import model.tour.TourOrderInfoBean;
import model.tour.dao.TourBatchDAO;
import model.tour.dao.TourMemberInfoDAO;
import model.tour.dao.TourOrderInfoDAO;
import model.userInfo.UserInfoBean;
import model.userInfo.dao.UserInfoDAOHibernate;

@Service
public class TourBuyService {
	@Autowired
	private TourBatchDAO tourBatchDao;
	@Autowired
	private UserInfoDAOHibernate userDao;
	@Autowired
	private TourOrderInfoDAO orderDao;
	@Autowired
	private TourMemberInfoDAO memberDao;
	
	public Map<String,Object> method(Integer serialNo,String accountName) {
		TourBatchBean tour = tourBatchDao.findByPrimaryKey(serialNo);
		UserInfoBean user = userDao.findByPrimaryKey(accountName);
		Map<String,Object> result = new HashMap<>();
		result.put("tour", tour);
		result.put("user", user);
		return result;
	}
	
	public Integer order(String serialNo , String accountName , String fullName , String phone , String email , String usersex , Integer quantity , Integer total,
						List<String> sex,String[] cname , String[] pname , Integer[] price , String[] passenger) {
		TourOrderInfoBean bean = new TourOrderInfoBean();
		bean.setSerialNo(Integer.valueOf(serialNo));
		bean.setAccountName(accountName);
		bean.setFullName(fullName);
		bean.setPhone(phone);
		bean.setEmail(email);
		bean.setSex(usersex);
		bean.setQuantity(quantity);
		bean.setTotal(total);
		bean.setOrderStatus("未付款");
		bean.setOrderTime(new Date());
		Integer orderNo = orderDao.create(bean).getOrderNo();
		
		int i = cname.length;
		Integer q = ( i==0 ? 1 : i ) ;
		for(int x = 0 ; x < q ; x++ ) {
			TourMemberInfoBean test = new TourMemberInfoBean();
			test.setOrderNo(orderNo);
			test.setPurchaseOrder(x);
			test.setFullName(cname[x]);
			test.setPassport(pname[x]);
			test.setSex(sex.get(x));
			test.setPrice(price[x]);
			test.setPassenger(passenger[x]);
			memberDao.create(test);
		}
		
		return orderNo;
	}
	
//	public void member(Integer orderNo , Integer purchaseOrder , String fullName , String passport , String sex , Integer price , String passenger) {
//		TourMemberInfoBean bean = new TourMemberInfoBean();
//		bean.setOrderNo(orderNo);
//		bean.setPurchaseOrder(purchaseOrder);
//		bean.setFullName("123");
//		bean.setPassport("456");
//		bean.setSex("F");
//		bean.setPrice(456789);
//		bean.setPassenger("成人");
//		memberDao.create(bean);
//	}
}
