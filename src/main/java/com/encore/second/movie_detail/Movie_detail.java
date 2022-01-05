package com.encore.second.movie_detail;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import com.encore.second.movie.Movie;
import com.encore.second.seat.Seat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Setter
@Getter
@ToString
public class Movie_detail {

	@Id
	private int id;
	
	@ManyToOne
	@JoinColumn(nullable=false)
	private Movie movie;
	
	private String date; //상영하는 날짜 
	
	private String time;
	
	private String room;
}
