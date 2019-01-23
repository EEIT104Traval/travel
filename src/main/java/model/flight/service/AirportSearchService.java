package model.flight.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.flight.AirportCompareBean;
import model.flight.AirportCompareDAO;
@Service
@Transactional
public class AirportSearchService {

	@Autowired
	AirportCompareDAO dao;
	
	public List<String> searchAirportName(List<String> code){
		List<String> list = new ArrayList<>();
		for(String co : code) {
			
			AirportCompareBean bean = dao.findByPrimaryKey(co);
			list.add(bean.getAirportName());
		}
		return list;
		
	}
	
}
