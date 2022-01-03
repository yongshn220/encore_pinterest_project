package com.encore.second.movie;


import java.util.Date;

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
	private int movie_id;
	
	private String title;
	
	private String content;
	
	private String screen_period; //상영기간
	
	private boolean screen_flag;  //개봉유무
	
	private Date open_date;
	
	private String img_path;
	
	@Transient
	private MultipartFile img_file;

}
