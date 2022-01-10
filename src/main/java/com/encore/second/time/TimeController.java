package com.encore.second.time;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Time")
public class TimeController {

	@Autowired
	private TimeService service;
	
	@GetMapping("/")
	public void test(int id) {
		service.getById(id);
	}
}
