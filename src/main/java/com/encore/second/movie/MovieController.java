package com.encore.second.movie;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/Home")
public class MovieController {

	@Autowired
	MovieService service;


	@GetMapping("/main")
	public void main(Map map) {
		ArrayList<Movie> list = service.getAll();
		map.put("main", list);
	}


	@GetMapping("/detail/{id}")
	public String detail(@PathVariable("id") int id, Map map) {
		Movie m = service.getById(id);
		map.put("m", m);
		return "Home/detail";

	}

	@PostMapping("/getbytitle")
	public String getByTitle(String title, Map map) {
		ArrayList<Movie> list = service.getByTitle(title);
		map.put("list", list);
		return "redirect:/Home/detail";
	}

	
	
	
	
	
	
	
	
	
	

	
//@RequestMapping("/list")
//	public void list(Map map) {
//		ArrayList<Movie> list = service.getAll();
//		map.put("list", list);
//	}		
	
	
//	@GetMapping("/main")
//	public String addForm() {
//			return "movie/main";
//	}
//	
//	
//	
//	@PostMapping("/main")
//	public String add(Movie m) {
//		Movie m2 = service.saveMovie(m);
//		return "redirect:/movie/list";
//	}
//	
	
	
	
	
//	// 제목으로 검색
//	@PostMapping("/getbytitle/{title}")
//	public String getByTitle(String word, Map map) {
//		ArrayList<Movie> list = service.getByTitle(word);
//		map.put("list", list);
//		return "movie/list";
//	}

//	//수정
//	//요청url: post:"/movie/edit", view: "redirect:/movie/list"
//	@PostMapping("/edit")
//	public String edit(Movie m) {
//		service.saveMovie(m);
//		return "redirect:/movie/list";
//	}
//	
//	//삭제
//	//요청url: get:"/movie/del", view: "redirect:/movie/list"
//	@GetMapping("/del/{num}")
//	public String del(@PathVariable("num")int num, Map map) {
//		service.delMovie(num);
//		map.put("del", num);
//		return "movie/list";
//	}

}
