package com.encore.second.movie_detail;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import com.encore.second.movie.Movie;
import com.encore.second.room.Room;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Setter
@Getter
@ToString
public class Movie_detail {

	@Id
	private int detail_id;
	
	@ManyToOne
	@JoinColumn(name="move_id", nullable=false)
	@OnDelete(action=OnDeleteAction.CASCADE)
	private Movie movie;
	
	private String date;
	
	private String time;
	
	@ManyToMany
	@JoinColumn(name="room_id", nullable=false)
	private Room room;
}
