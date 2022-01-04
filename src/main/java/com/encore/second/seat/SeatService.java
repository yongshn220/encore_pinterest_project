package com.encore.second.seat;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SeatService {
	
	@Autowired
	private SeatDao dao;
	
	public void save(Seat r) {
		dao.save(r);
	}
	
	public ArrayList<Seat> getRoom(String detail_id){
		return dao.findByDetail(detail_id);
	}
	
	
	public void delete(int seat_id) {
		dao.deleteById(seat_id);
	}
	
	
}
