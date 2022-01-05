package com.encore.second.seat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.encore.second.movie_detail.Movie_detail;

@Controller
@RequestMapping("/Seat")
public class SeatController {

	@Autowired
	SeatService service;
	
	
	@RequestMapping("/")
	public String test()
	{
		return "/Reservation/SeatSelection/SeatSelection";
	}
	
	@GetMapping("/Select")
	public String SelectSeat(Movie_detail detail)
	{
		return "";
	}

}
