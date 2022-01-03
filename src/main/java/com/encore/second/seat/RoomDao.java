package com.encore.second.seat;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;

public interface RoomDao extends JpaRepository<Room, Integer> {

	ArrayList<Room> findByRoom(String detail_id);
}
