package com.encore.second.reserve;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;

import com.encore.second.user.User;

public interface ReserveDao extends JpaRepository<Reserve, Integer> {
	
<<<<<<< HEAD
	ArrayList<Reserve> findByUser(String user);
	//Reserve r
=======
	ArrayList<Reserve> findByUser(User user);
>>>>>>> 02bf5f262f033f668bd0065131dc839463baacba
}
