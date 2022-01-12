package com.encore.second.movie_detail;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.encore.second.movie.Movie;
import com.encore.second.movie.MovieService;
import com.encore.second.time.Time;
import com.encore.second.time.TimeService;

@Controller
@RequestMapping("/Reservation/DateSelection")
public class Movie_detailController {
	
	@Autowired
	private Movie_detailService service;
	@Autowired
	private MovieService serviceM;
	@Autowired
	private TimeService serviceT;
	
	/*
	 * @GetMapping("/main/{movie}") public void main(@PathVariable("movie") Movie
	 * movie, Map map) { ArrayList<Movie_detail> list =
	 * service.getByMovie_detail_movie(movie); map.put("list", list); }
	 */
	
	@GetMapping("/main/{movie}")
	public void main(Map map) {
		Movie movie = serviceM.getById(1);
		ArrayList<Movie_detail> list = service.getByMovie_detail_movie(movie);
		map.put("m", movie);
		map.put("list", list);
	}
	
/*	@GetMapping("/main/{movie_id}")
	public void main(@PathVariable("movie_id") int id, Map map) {
		Movie movie = serviceM.getById(id);
		ArrayList<Movie_detail> list = service.getByMovie_detail_movie(movie);
		map.put("m", movie);
		map.put("list", list);
	}*/
	
	@ResponseBody
	@RequestMapping("/timelist")
	public Map timelist(Movie_detail md) {
		Map map = new HashMap();
		ArrayList<Time> tl = serviceT.getByDetail(md);
		map.put("tl", tl);
		return map;
	}
		
}
