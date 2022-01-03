package com.encore.second.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	@Autowired
	private UserDao dao;
	
	public User saveUser(User u) {
		return dao.save(u);
	}
	
	public User getUser(String id) {
		return dao.findById(id).orElse(null);
	}
	
	public void delUser(String id) {
		dao.deleteById(id);
	}
}
