package com.encore.second.seat;

import java.util.ArrayList;
import java.util.Map;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
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
		ArrayList<Seat> seatList = seatService.getByTime(time);
		
		try {
			ObjectMapper mapper = new ObjectMapper();
			String jsonTime = mapper.writeValueAsString(time);
			String jsonSeatList = mapper.writeValueAsString(seatList);
			map.put("time", jsonTime);
			map.put("seatList", jsonSeatList);
		}
		catch(Exception e)
		{
			map.put("time", "");
			e.printStackTrace();
		}
		return "/Reservation/SeatSelection/SeatSelection";
	}
	
	//mysql Seat Data Helper
	@GetMapping("/Helper/AddSeatData")
	public String AddSeatData()
	{
		ArrayList<Time> timeList = timeService.getAll();
		Seat newSeat;
		Time newTime;
		int id = 1;
		for(int t = 0; t < timeList.size(); t++)
		{
			newTime = timeList.get(t);
			for(int r = 0; r < 5; r++)
			{
				for(int c = 0; c < 5; c++)
				{
					newSeat = new Seat();
					newSeat.setId(id);
					newSeat.setTime(newTime);
					newSeat.setRow2(r);
					newSeat.setCol2(c);
					newSeat.setSeat_info(false);
	
					seatService.save(newSeat);
					id++;
				}
			}
		}
		return "/Reservation/SeatSelection/Test";
	}
	
	
	@GetMapping("/Helper/AddReservedSeat")
	public String AddReservedSeat()
	{
		Time newTime = timeService.getById(1);
		ArrayList<Seat> seatList = seatService.getByTime(newTime);
		
		int idOffset = seatList.get(0).getId();
		for(int i = 0; i < seatList.size(); i++)
		{
			int relId = seatList.get(i).getId() - idOffset;
			if(relId == 4 || relId == 5 || relId == 6 || relId ==7)
			{
				Seat nSeat = seatList.get(i);
				nSeat.setSeat_info(true);
				seatService.save(nSeat);
			}
		}
		
		return "/Reservation/SeatSelection/Test";
	}
	
}
