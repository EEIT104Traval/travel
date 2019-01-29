package model.tour.service;

import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.tour.GroupTourBean;
import model.tour.TourBatchBean;
import model.tour.TourMemberInfoBean;
import model.tour.TourOrderInfoBean;
import model.tour.dao.GroupTourDAO;
import model.tour.dao.TourBatchDAO;
import model.tour.dao.TourMemberInfoDAO;
import model.tour.dao.TourOrderInfoDAO;
import model.userInfo.UserInfoBean;
import model.userInfo.dao.UserInfoDAOHibernate;

@Service
@Transactional
public class TourBuyService {
	@Autowired
	private TourBatchDAO tourBatchDao;
	@Autowired
	private UserInfoDAOHibernate userDao;
	@Autowired
	private TourOrderInfoDAO orderDao;
	@Autowired
	private TourMemberInfoDAO memberDao;
	@Autowired
	private GroupTourDAO groupTourDao;
	
	public Map<String,Object> method(Integer serialNo,String accountName) {
		TourBatchBean tour = tourBatchDao.findByPrimaryKey(serialNo);
		UserInfoBean user = userDao.findByPrimaryKey(accountName);
		Map<String,Object> result = new HashMap<>();
		result.put("tour", tour);
		result.put("user", user);
		return result;
	}
	
	public TourOrderInfoBean order(String serialNo , String accountName , String fullName , String phone , String email , String usersex , Integer quantity , Integer total,
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
		TourOrderInfoBean result = orderDao.create(bean);
		
		TourBatchBean BB = tourBatchDao.findByPrimaryKey(Integer.valueOf(serialNo));
		BB.setPeopleCount(BB.getPeopleCount()+quantity);
		
		int i = cname.length;
		Integer q = ( i==0 ? 1 : i ) ;
		for(int x = 0 ; x < q ; x++ ) {
			TourMemberInfoBean test = new TourMemberInfoBean();
			test.setOrderNo(result.getOrderNo());
			test.setPurchaseOrder(x);
			test.setFullName(cname[x]);
			test.setPassport(pname[x]);
			test.setSex(sex.get(x));
			test.setPrice(price[x]);
			test.setPassenger(passenger[x]);
			memberDao.create(test);
		}
		
		return result;
	}
	
	public TourBatchBean BatchfindPK (Integer serialNo) {
		TourBatchBean result = tourBatchDao.findByPrimaryKey(serialNo);
		return result;
	}
	
	public List<TourOrderInfoBean> findAccount(String accountName){
		List<TourOrderInfoBean> result = orderDao.findOrderaccountName(accountName);
		Set<Integer> set = new HashSet<>();
		for(TourOrderInfoBean rs:result) {
			set.add(rs.getSerialNo());
		}
		
		return result;
	}
	
	public List<TourMemberInfoBean> findOrderNo(Integer orderNo) {
		List<TourMemberInfoBean> list = memberDao.findOrderNo(orderNo);
		return list;
	}
	
	public TourMemberInfoBean updateMember(Integer orderNo, Integer purchaseOrder, String fullName, String passport, String sex) {
		TourMemberInfoBean bean = memberDao.findDoublePK(orderNo, purchaseOrder).get(0);
		bean.setFullName(fullName);
		bean.setPassport(passport);
		bean.setSex(sex);
		TourMemberInfoBean result = memberDao.update(bean);
		return result;
	}
	
	public TourOrderInfoBean cancel(Integer orderNo) {
		TourOrderInfoBean bean = orderDao.findByPrimaryKey(orderNo);
		bean.setOrderStatus("退訂");
		TourOrderInfoBean result = orderDao.update(bean);
		return result;
	}
	
	public Map<String, List<?>> findByPrimaryKey(String user) {

		Map<String, List<?>> map = new HashMap<String, List<?>>();

		List<TourOrderInfoBean> tourInfo = orderDao.findOrderaccountName(user);
		List<TourBatchBean> tourBatch = tourBatchDao.findByTourOrderList(tourInfo);
		List<GroupTourBean> tourList = groupTourDao.findByTourBatchList(tourBatch);
		
		for (GroupTourBean groupTourBean : tourList) {
			for (TourBatchBean tourBatchBean : tourBatch) {
				for (TourOrderInfoBean tourOrder : tourInfo) {

					if ((groupTourBean.getTourNo().equals(tourBatchBean.getTourNo()))
							&& (tourBatchBean.getSerialNo().equals(tourOrder.getSerialNo()))) {

						tourBatchBean.setTourName(groupTourBean.getTourName());
						tourOrder.setTourName(tourBatchBean.getTourName());
						tourOrder.setTourNo(groupTourBean.getTourNo());	
						tourOrder.setDepartureDate(tourBatchBean.getDepartureDate());;	
					}
					continue;
				}
			}
		}

		if (tourInfo.size() > 0) {
			map.put("TourOrderInfoBean", tourInfo);
		}

		return map;
	}
	
}
