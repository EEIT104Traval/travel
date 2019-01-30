package model.tour.service;

import java.util.ArrayList;
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
import model.tour.TestBean;
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

	public Map<String, Object> method(Integer serialNo, String accountName) {
		TourBatchBean tour = tourBatchDao.findByPrimaryKey(serialNo);
		UserInfoBean user = userDao.findByPrimaryKey(accountName);
		Map<String, Object> result = new HashMap<>();
		result.put("tour", tour);
		result.put("user", user);
		return result;
	}

	public TourOrderInfoBean order(String serialNo, String accountName, String fullName, String phone, String email,
			String usersex, Integer quantity, Integer total, List<String> sex, String[] cname, String[] pname,
			Integer[] price, String[] passenger) {
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
		BB.setPeopleCount(BB.getPeopleCount() + quantity);

		int i = cname.length;
		Integer q = (i == 0 ? 1 : i);
		for (int x = 0; x < q; x++) {
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

	public TourBatchBean BatchfindPK(Integer serialNo) {
		TourBatchBean result = tourBatchDao.findByPrimaryKey(serialNo);
		return result;
	}

	public List<TourOrderInfoBean> findAccount(String accountName) {
		List<TourOrderInfoBean> result = orderDao.findOrderaccountName(accountName);
		Set<Integer> set = new HashSet<>();
		for (TourOrderInfoBean rs : result) {
			set.add(rs.getSerialNo());
		}

		return result;
	}

	public List<TourMemberInfoBean> findOrderNo(Integer orderNo) {
		List<TourMemberInfoBean> list = memberDao.findOrderNo(orderNo);
		return list;
	}

	public TourMemberInfoBean updateMember(Integer orderNo, Integer purchaseOrder, String fullName, String passport,
			String sex) {
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
//		TourOrderInfoBean result = orderDao.update(bean);
		return bean;
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
						tourOrder.setDepartureDate(tourBatchBean.getDepartureDate());
						;
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

	public List<TestBean> test(String accountName) {
		List<?> list = orderDao.findByAccound(accountName);
		List<TestBean> result = new ArrayList<>();
		TestBean bean = null;
		
//		for (int i = 0; i < list.size(); i++) {
//			Object[] obj = (Object[]) list.get(i);
//			for (int j = 0; j < obj.length; j++) {
//				System.out.print("obj"+j+"="+ obj[j].toString()+",");
//			}
//			System.out.println();
//		}
		
		for (int i = 0; i < list.size(); i++) {
			Object[] obj = (Object[]) list.get(i);
			bean = new TestBean();
			for (int j = 0; j < obj.length; j++) {
				switch (j) {
				case 0:bean.setTourNo(obj[j].toString());
				case 1:bean.setTourName(obj[j].toString());
				case 2:bean.setDepartureDate(obj[j].toString());
				case 3:bean.setOrderNo(obj[j].toString());
				case 4:bean.setAccountName(obj[j].toString());
				case 5:bean.setFullName(obj[j].toString());
				case 6:bean.setEmail(obj[j].toString());
				case 7:bean.setPhone(obj[j].toString());
				case 8:bean.setOrderStatus(obj[j].toString());
				case 9:bean.setOrderTime(obj[j].toString());
				case 10:bean.setQuantity(obj[j].toString());
				case 11:bean.setTotal(obj[j].toString());
				case 12:bean.setSex(obj[j].toString());
				}
			}
			result.add(bean);
		}
		return result;
	}

}
