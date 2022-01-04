package com.encore.second.movie;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;


@Controller
@RequestMapping("/Home")
public class MovieController {
	
	@Autowired
	MovieService service;
	
	//영화등록 
	@GetMapping("/add")
	public String addForm() {
			return "movie/form";
	}
	
	
	//영화등록
	@PostMapping("/add")
	public String add(Movie m) {
		Movie m2 = service.saveMovie(m);
		return "redirect:/movie/list";
	}
	
	
	//영화목록
	//요청url: get: "/movie/list" , view: "movie/list"  
	@GetMapping("/list")
	public void list(Map map) {
		ArrayList<Movie> list = service.getAll();
		map.put("list", list);
	}
	
	//제목으로 검색
	//요청url: get: "/movie/getByTitle/{title}", view: "movie/list"
	@PostMapping("/getbytitle/{title}")
	public String getByTitle(String title, Map map) {
		ArrayList<Movie> list = service.getByTitle(title);
		map.put("list", list);
		return "movie/list";
	}
	
	
	//수정
	//요청url: post:"/movie/edit", view: "redirect:/movie/list"
	@PostMapping("/edit")
	public String edit(Movie m) {
		service.saveMovie(m);
		return "redirect:/movie/list";
	}
	
	//삭제
	//요청url: get:"/movie/del", view: "redirect:/movie/list"
	@GetMapping("/del/{num}")
	public String del(@PathVariable("num")int num, Map map) {
		service.delMovie(num);
		map.put("del", num);
		return "movie/list";
	}

}
