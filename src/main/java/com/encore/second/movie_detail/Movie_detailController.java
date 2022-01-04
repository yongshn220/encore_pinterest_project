package com.encore.second.movie_detail;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.encore.second.movie.Movie;

@Controller
@RequestMapping("/Detail")
public class Movie_detailController {
	
	@Autowired
	private Movie_detailService service;
	
	@GetMapping("/main/{movie}")
	public void main(Map map) {
		ArrayList<Movie_detail> list = service.getByMovie_detail_movie(@PathVariable("movie") Movie movie);
				
	}
}
