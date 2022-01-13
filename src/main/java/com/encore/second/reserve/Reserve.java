package com.encore.second.reserve;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import com.encore.second.time.Time;
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
	private int id;

	@ManyToOne
	@JoinColumn(nullable = false)
	private User user;

	@ManyToOne
	@JoinColumn(nullable = false)
	@OnDelete(action = OnDeleteAction.CASCADE)
	private Time time;

	@Column(nullable = false)
	private int adult_num;
	
	@Column(nullable = false)
	private int child_num;
	
	@Column(nullable = false)
	private int price;
	
//	adult_num
//	child_num
//	price
}
