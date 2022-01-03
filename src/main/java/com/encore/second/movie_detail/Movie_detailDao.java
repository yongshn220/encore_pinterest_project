package com.encore.second.movie_detail;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;

import com.encore.second.movie.Movie;

public interface Movie_detailDao extends JpaRepository<Movie_detail, Integer> {

	ArrayList<Movie_detail> findByMovie(Movie movie);

	ArrayList<Movie_detail> findByDate(String date);
	
	ArrayList<Movie_detail> findByTime(String time);
	
}
