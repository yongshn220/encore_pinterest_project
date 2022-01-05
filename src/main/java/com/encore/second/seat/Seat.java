package com.encore.second.seat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.encore.second.movie_detail.Movie_detail;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Setter
@Getter
@ToString
public class Seat {
	
	@Id
	private int id;    //좌석
	
	@ManyToOne
	@JoinColumn(nullable=false)
	private Movie_detail movieDetail; //상영관
	
	@Column(nullable = false)
	private int row2;        //좌석행
	@Column(nullable = false)
	private int col2;        //좌석열
	@Column(nullable = false)
	private int seat_info;  //좌석 예매 유무
	
}
