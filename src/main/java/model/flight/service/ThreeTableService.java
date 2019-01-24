package model.flight.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.flight.dao.FlightOrderInfoDAOHibernate;

@Service
@Transactional
public class ThreeTableService {
	@Autowired
	FlightOrderInfoDAOHibernate dao;
	
	public void method() {
		
		
		List<?> list = dao.findByAccound("micky");
		System.out.println("有執行到treemethod");
		System.out.println("list=========>"+list);
		
	}
	
	
}
