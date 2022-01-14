package com.encore.second.seat;

import java.util.ArrayList;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.encore.second.time.Time;

public interface SeatDao extends JpaRepository<Seat, Integer> {
	
	public ArrayList<Seat> findByTime(Time time);

	@Transactional
	@Modifying
	@Query(value="update Seat set seat_info = 1 where id = :num ")
	void updateinfo(@Param("num") int num);

}
