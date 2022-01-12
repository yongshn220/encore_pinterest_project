package com.encore.second.seat;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;

import com.encore.second.time.Time;

public interface SeatDao extends JpaRepository<Seat, Integer> {
	
	public ArrayList<Seat> findByTime(Time time);
}
