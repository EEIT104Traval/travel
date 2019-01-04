package model.tour.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.tour.dao.GroupTourDAO;

@Service
public class GroupTourService {
	@Autowired
	private GroupTourDAO groupTourDAO ;
	
}
