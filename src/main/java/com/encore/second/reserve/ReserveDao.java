package com.encore.second.reserve;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;

import com.encore.second.user.User;

public interface ReserveDao extends JpaRepository<Reserve, Integer> {
	
	ArrayList<Reserve> findByUser(User user);
}
