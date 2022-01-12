package com.encore.second.movie;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class MovieService {
	@Autowired
	private MovieDao dao;
	
	//영화등록, 수정
	public Movie saveMovie(Movie m) {
		return dao.save(m);
	}
	
	//영화목록
	public ArrayList<Movie> getAll(){
		return (ArrayList<Movie>) dao.findAll();
	}
	
	//영화삭제
	public void delMovie(int id) {
		dao.deleteById(id);
	}
	
	public Movie getById(int id) {
		return dao.findById(id).orElse(null);
	}
	
	//영화제목으로 검색
	public ArrayList<Movie> getByTitle(String title){
		return dao.findBytitleLike("%"+title+"%");
	}

}
