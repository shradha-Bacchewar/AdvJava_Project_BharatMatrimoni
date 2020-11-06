package com.cdac.service;

import java.util.List;

import com.cdac.dto.Profile;

public interface ProfileService {
	void addProfile(Profile profile);
	void removeProfile(int profileID);
	Profile findProfile(int profileID);
	void modifyProfile(Profile profile);
	List<Profile> selectAll();
	List<Profile> selectchoice(String cast, float height, String education);
}
