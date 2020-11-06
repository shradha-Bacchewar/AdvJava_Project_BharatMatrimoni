package com.cdac.dao;

import java.util.List;

import com.cdac.dto.Profile;

public interface ProfileDao {
	void insertProfile(Profile profile);
	void deleteProfile(int profileID);
	Profile selectProfile(int profileID);
	void updateProfile(Profile profile);
	List<Profile> selectAll();
	List<Profile> selectchoice(String cast, float height, String education);
}
