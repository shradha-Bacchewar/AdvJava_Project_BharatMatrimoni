package com.cdac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.ProfileDao;
import com.cdac.dto.Profile;

@Service
public class ProfileServiceImple implements ProfileService{

	@Autowired
	private ProfileDao profileDao;
	
	@Override
	public void addProfile(Profile profile) {
		profileDao.insertProfile(profile);
		
	}

	@Override
	public void removeProfile(int profileID) {
		profileDao.deleteProfile(profileID);
		
	}

	@Override
	public Profile findProfile(int profileID) {
		return profileDao.selectProfile(profileID);
	
	}

	@Override
	public void modifyProfile(Profile profile) {
		profileDao.updateProfile(profile);
		
	}

	@Override
	public List<Profile> selectAll() {
		return profileDao.selectAll();
		
	}

	@Override
	public List<Profile> selectchoice(String cast, float height, String education) {
		// TODO Auto-generated method stub
		return profileDao.selectchoice(cast,height,education);
	}

	

}
