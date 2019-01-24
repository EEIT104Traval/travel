package model.flight.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.flight.FlightOrderInfoBean;
import model.flight.FlightOrderInfoDAO;
import model.flight.dao.FlightOrderInfoDAOHibernate;

@Service
@Transactional
public class ThreeTableService {
	@Autowired
	FlightOrderInfoDAOHibernate dao;
	
	@Autowired
	FlightOrderInfoDAO dao2;
	
	public List<FlightOrderInfoBean> method(String account) {
		System.out.println("有執行到threeServicemethod:begin");
//		List<?> result = dao.findByAccound("micky");
		List<FlightOrderInfoBean> bean = dao.findByAccountName(account);
//		dao2.findByPrimaryKey(4);
		System.out.println("result===>"+bean);
		return bean;
	}
}
