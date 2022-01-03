package com.encore.second.room;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;

public interface RoomDao extends JpaRepository<Room, Integer> {

	ArrayList<Room> findByRoom(String room_id);
}
