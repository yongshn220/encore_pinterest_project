package com.encore.second.reserve;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;



public interface ReserveDao extends JpaRepository<Reserve, Integer> {
	

	ArrayList<Reserve> findByUser(String user);
	//Reserve r
}
