package com.encore.second.movie;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Setter
@Getter
@ToString
public class Movie {
	@Id  //primary key
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String title;
	
	private String content;
	
	private String screen_period; //상영기간
	
	private boolean screen_flag;  //개봉유무
	
	private String open_date;  //상영 시작일
	
	private String img_path;
	
	@Transient
	private MultipartFile img_file;
	
	//hi

}














/*
 * 
 * 1. schedule : 시간대, 날짜, movie_id ....
 * 
 * 2. room : schedule_id, id
 * 
 * 3. seat : room_id, position
 * 
 *z
 * */
