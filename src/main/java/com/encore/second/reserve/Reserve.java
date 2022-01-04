package com.encore.second.reserve;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import com.encore.second.movie_detail.Movie_detail;
import com.encore.second.seat.Seat;
import com.encore.second.user.User;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Setter
@Getter
@ToString
public class Reserve {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int reserve_id;
	
	@ManyToOne
	@JoinColumn(name="user_id", nullable=false)
	private User user;
	
	@ManyToOne
	@JoinColumn(name="detail_id", nullable=false)
	@OnDelete(action= OnDeleteAction.CASCADE)
	private Movie_detail detail;
	
	@ManyToOne
	@JoinColumn(name="seat_id", nullable=false)
	private Seat seat;
}
