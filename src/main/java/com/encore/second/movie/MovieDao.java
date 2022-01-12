package com.encore.second.movie;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;

public interface MovieDao extends JpaRepository<Movie, Integer> {

	ArrayList<Movie> findBytitleLike(String title);
}
