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
	
	private String act_director; //감독: / 배우:  
	private String genre_bas; //장르: / 기본:12세이상,148분,미국... 
	private String open_date; //개봉일

	private String content; //줄거리
	private boolean screen_flag; //개봉유무
	   
	private String img_path; //포스터
	
	@Transient
	private MultipartFile img_file;
	   
	   
	

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
