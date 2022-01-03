package com.encore.second.seat;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoomService {
	
	@Autowired
	private RoomDao dao;
	
	public void save(Room r) {
		dao.save(r);
	}
	
	public ArrayList<Room> getRoom(String detail_id){
		return dao.findByDetail(detail_id);
	}
	
	
	public void delete(int seat_id) {
		dao.deleteById(seat_id);
	}
	
	
}
