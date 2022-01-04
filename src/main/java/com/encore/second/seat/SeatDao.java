package com.encore.second.seat;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;

public interface SeatDao extends JpaRepository<Seat, Integer> {

	ArrayList<Seat> findByDetail(String detail_id);
}
