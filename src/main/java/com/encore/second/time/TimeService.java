package com.encore.second.time;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.encore.second.movie_detail.Movie_detail;


@Service
public class TimeService {

	@Autowired
	private TimeDao dao;
	
	public Time getById(int id){
		return dao.findById(id).orElse(null);
	}
	
	public ArrayList<Time> getByDetail(Movie_detail md){
		return dao.findBymovieDetail(md);
	}
	
	
	
	
	
	
	
	
	public ArrayList<Time> getAll()
	{
		return (ArrayList<Time>) dao.findAll();
	}
}
