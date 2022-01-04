package com.encore.second.seat;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Setter
@Getter
@ToString
public class Seat {
	
	@Id
	private int seat_id;    //좌석
	
	@ManyToOne
	@JoinColumn(name="detail_id", nullable=false)
	@OnDelete(action= OnDeleteAction.CASCADE)
	private String detail_id; //상영관
	
	private int row;        //좌석행
	
	private int col;        //좌석열
	
	private int seat_info;  //좌석 예매 유무
	
}
