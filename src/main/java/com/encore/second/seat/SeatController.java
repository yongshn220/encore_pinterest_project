package com.encore.second.seat;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.encore.second.time.Time;
import com.encore.second.time.TimeService;

@Controller
@RequestMapping("/Seat")
public class SeatController {

	@Autowired
	SeatService seatService;
	
	@Autowired
	TimeService timeService;
	
	
	@RequestMapping("/")
	public String test()
	{
		return "/Reservation/SeatSelection/SeatSelection";
	}
	
	@GetMapping("/Select/{time_id}")
	public String SelectSeat(@PathVariable("time_id") String time_id, Map<String, Time> map)
	{
		Time time = timeService.getById(Integer.parseInt(time_id));
		map.put("time_id", time);
		return "/Reservation/SeatSelection/SeatSelection";
	}
}
