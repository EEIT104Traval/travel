package model.hotel;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class RoomTypeService {

	@Autowired
	private RoomAvailableDAO roomAvailableDAO;
	@Autowired
	private RoomTypeDAO roomTypeDAO;

	public Map<String, List<?>> findRoomType(Integer roomTypeNo) {

		Map<String, List<?>> map = new HashMap<String, List<?>>();
		List<RoomTypeBean> roomtype = roomTypeDAO.findRoomType(roomTypeNo);
		List<RoomAvailableBean> roomdate = roomAvailableDAO.findRoomByDate(roomtype);

		System.out.println(roomtype);
		System.out.println(roomdate);

		for (RoomAvailableBean roomAvailableBean : roomdate) {
			for (RoomTypeBean roomTypeBean : roomtype) {
				if (roomAvailableBean.getRoomTypeNo().equals(roomTypeBean.getRoomTypeNo())) {
					roomTypeBean.setDate(roomAvailableBean.getDate());
					System.out.println(roomTypeBean);
				}
				continue;
			}
		}
		if (roomtype.size() > 0) {
			map.put("RoomTypeBean", roomtype);
		}
//		System.out.println(result);

		return map;
	}
	
	public RoomTypeBean findroom(Integer roomTypeNo){
		RoomTypeBean result = roomTypeDAO.findByPrimaryKey(roomTypeNo);
		return result;
	}
	
	public List<RoomTypeBean> selectAll(){
		 List<RoomTypeBean> bean =roomTypeDAO.findAll();
		 return bean;
	}
}
