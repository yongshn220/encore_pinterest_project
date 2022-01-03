package com.encore.second.room;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Setter
@Getter
@ToString
public class Room {
	
	@Id
	private int seat_id;    //좌석

	private String room_id; //상영관
	
	private int row;        //좌석행
	
	private int col;        //좌석열
	
	private int seat_info;  //좌석 예매 유무
	
}
