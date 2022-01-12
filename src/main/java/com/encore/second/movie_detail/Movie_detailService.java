package com.encore.second.movie_detail;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.encore.second.movie.Movie;

@Service
public class Movie_detailService {
	
	@Autowired
	private Movie_detailDao dao;
	
	public void add(Movie_detail md) {
		dao.save(md);
	}
	
	public Movie_detail getByMovie_detail_id(int id) {
		return dao.findById(id).orElse(null);
	}
	
	public ArrayList<Movie_detail> getByMovie_detail_movie(Movie movie){
		return dao.findByMovie(movie);
	}
	
	public ArrayList<Movie_detail> getByMovie_detail_date(String date){
		return dao.findByDate(date);
	}
	
}
