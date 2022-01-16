package com.encore.second.reserve;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.encore.second.user.User;



@Service
public class ReserveService {
	
	@Autowired
	private ReserveDao dao;
	
	public Reserve add(Reserve r) {
		return dao.save(r);
	}
	
	public Reserve getByReserve_id(int id) {
		return dao.findById(id).orElse(null);
	}
	
	public ArrayList<Reserve> getByUser_id(User user) {
		return dao.findByUser(user);
	}
	
	public void delReserve(int id) {
		dao.deleteById(id);
	}
}
 