package com.encore.second.time;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;

import com.encore.second.movie_detail.Movie_detail;

public interface TimeDao extends JpaRepository<Time, Integer> {

	ArrayList<Time> findBymovieDetail(Movie_detail movieDatail);

	ArrayList<Time> findBytimeRoom(String timeRoom);
	
}
