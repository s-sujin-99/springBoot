package com.zeus.demo.dto;

import lombok.Data;

import java.time.LocalDate;

@Data
public class Member {
	private String userId;
	private String password;
	private String userName;
	private String email;
	private LocalDate dateOfBirth;

}
