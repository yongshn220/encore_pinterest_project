package com.encore.second.seat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SeatController {

	@Autowired
	SeatService service;
	
	
	
	@RequestMapping("/")
	public String test()
	{
		return "index";
	}
	//test
}
