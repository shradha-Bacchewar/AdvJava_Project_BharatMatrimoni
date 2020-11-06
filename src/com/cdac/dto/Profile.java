package com.cdac.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="prof")
public class Profile {
	@Id
	@Column(name="profile_id")
	@GeneratedValue
	private int profileID;
	private int userId;
	public int getUserId() {
		return userId;
	}



	public void setUserId(int userId) {
		this.userId = userId;
	}



	public Profile(int profileID) {
		super();
		this.profileID = profileID;
	}
	
	//@Column(name="prof_pic")
//	private String profpic;
	
	@Column(name="date_of_birth")
	private String DateOfBirth;
	@Column(name="prof_city")
	private String city;
	@Column(name="prof_edu")
	private String education;
	@Column(name="prof_inco")
	private int income;
	@Column(name="prof_cast")
	private String cast;
	@Column(name="prof_bg")
	private String bloodgrp;
	@Column(name="prof_heigth")
	private float height;
	
	public Profile() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public int getProfileID() {
		return profileID;
	}
	public void setProfileID(int profileID) {
		this.profileID = profileID;
	}
	
	public String getDateOfBirth() {
		return DateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		DateOfBirth = dateOfBirth;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public int getIncome() {
		return income;
	}
	public void setIncome(int income) {
		this.income = income;
	}
	public String getCast() {
		return cast;
	}
	public void setCast(String cast) {
		this.cast = cast;
	}
	public String getBloodgrp() {
		return bloodgrp;
	}
	public void setBloodgrp(String bloodgrp) {
		this.bloodgrp = bloodgrp;
	}
	public float getHeight() {
		return height;
	}
	public void setHeight(float height) {
		this.height = height;
	}
	
	
}
