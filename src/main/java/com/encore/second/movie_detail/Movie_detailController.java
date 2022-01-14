package com.encore.second.movie_detail;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	
/*	@GetMapping("/main/{movie}")
	public void main(Map map) {
		Movie movie = serviceM.getById(1);
		ArrayList<Movie_detail> list = service.getByMovie_detail_movie(movie);
		map.put("m", movie);
		map.put("list", list);
	}*/
	
	@GetMapping("/main/{movie_id}")

	public String main(@PathVariable("movie_id") int id, Map map, HttpSession session, HttpServletResponse response) {
		String loginId = (String) session.getAttribute("loginid");
		if(loginId == null || loginId.equals("") ) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out;
			try {
				out = response.getWriter();
				out.println("<script language='javascript'>");
				out.println("alert('로그인이 필요한 서비스입니다.')");
				out.println("</script>");
				out.flush();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return "User/login";
		}
		Movie movie = serviceM.getById(id);
		ArrayList<Movie_detail> list = service.getByMovie_detail_movie(movie);
		map.put("m", movie);
		map.put("list", list);
		return "/Reservation/DateSelection/main";
		
	}
	
	@ResponseBody
	@RequestMapping("/timelist")
	public Map timelist(Movie_detail md) {
		Map map = new HashMap();
		ArrayList<Time> tl = serviceT.getByDetail(md);
		map.put("tl", tl);
		return map;
	}
		
}
