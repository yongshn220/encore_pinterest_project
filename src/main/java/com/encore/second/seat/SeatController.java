package com.encore.second.seat;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.encore.second.time.Time;
import com.encore.second.time.TimeService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/Seat")
public class SeatController {

	@Autowired
	SeatService seatService;
	
	@Autowired
	TimeService timeService;

	
	@GetMapping("/Select/{time_id}")
	public String SelectSeat(@PathVariable("time_id") String time_id, Map<String, String> map)
	{
		Time time = timeService.getById(Integer.parseInt(time_id));
		ObjectMapper mapper = new ObjectMapper();
		try {
			String jsonTime = mapper.writeValueAsString(time);		
			map.put("time", jsonTime);
		}
		catch(Exception e)
		{
			map.put("time", "");
			e.printStackTrace();
		}
		return "/Reservation/SeatSelection/SeatSelection";
	}
	/*
	//mysql Seat Data Helper
	@GetMapping("/Helper/AddSeatData")
	public void AddSeatData()
	{
		ArrayList<Time> timeList = timeService.get
		Seat newSeat;
		Time newTime;
		
		for(int t = 0; t < 10; t++)
		{
			newTime = 
			for(int r = 0; r < 5; r++)
			{
				for(int c = 0; c < 5; c++)
				{
					newSeat.setTime(null)
					newSeat.setRow2(r);
					newSeat.setCol2(c);
				}
			}
		}
	}
	*/
}
