package com.cdac.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dto.Profile;
import com.cdac.dto.User;
import com.cdac.service.ProfileService;

@Controller
public class ProfileContoller {

	@Autowired
	private ProfileService profileService;
	
	@RequestMapping(value="/prep_profile_add_form.htm",method=RequestMethod.GET)
	public String prfProfileAddform(ModelMap map) {
		map.put("profile", new Profile());
		return "prof_form";
		
	}
	@RequestMapping(value="/profile_add.htm",method=RequestMethod.POST)
	public String ProfileAddform(Profile profile,ModelMap map,HttpSession session) {
		int userId = ((User)session.getAttribute("user")).getUserId();
		//profile.setprofileID(userId); 
		profileService.addProfile(profile);
		return "home";
		
	}
	@RequestMapping(value="/profile_list.htm",method=RequestMethod.GET)
	public String allProfiles(Profile prf,ModelMap map,HttpSession session) {
	//	int userId = ((User)session.getAttribute("user")).getUserId();
		//prf.setUserId();
		//System.out.print();
		List<Profile> li=profileService.selectAll();
		
		map.put("plist",li);
		return "profile_list";
	}
	@RequestMapping(value = "/delete_form.htm",method = RequestMethod.POST)
	public String expenseDelete(@RequestParam int profileID,ModelMap map,HttpSession session) {
		
		profileService.removeProfile(profileID); 
	
		List<Profile> li = profileService.selectAll();
		map.put("plist", li);
		return "info";

	}
	

	@RequestMapping(value="/ch.htm",method=RequestMethod.POST)
	public String allProfiles(@RequestParam String cast,@RequestParam float height,@RequestParam String education ,ModelMap map,HttpSession session) {
	
	List<Profile> li=profileService.selectchoice(cast,height,education);
	
map.put("clist",li);
return "profile_list2";
}
	
	

	@RequestMapping(value = "/profile_update_form.htm",method = RequestMethod.GET)
	public String expenseUpdateForm(@RequestParam int profileId,ModelMap map) {
		
		Profile exp = profileService.findProfile(profileId);
		map.put("profile", exp);
		
		return "profile_update";
	}
	
	@RequestMapping(value = "/expense_update.htm",method = RequestMethod.POST)
	public String expenseUpdate(Profile profile,ModelMap map,HttpSession session) {
		
	//	int userId = ((User)session.getAttribute("user")).getUserId();
		//profile.setUserId(userId);
		profileService.modifyProfile(profile);
			
		List<Profile> li = profileService.selectAll();
		map.put("plist", li);
		return "profile_list";
	}
	

	
	
	
	
	//@RequestMapping(value = "/prof_delete_form.htm",method = RequestMethod.GET)
	//public String profileDelete(@RequestParam int expenseId,ModelMap map,HttpSession session) {
		
	//	profileService.removeProfile(profileID); 
		
	//	int userId = ((User)session.getAttribute("user")).getUserId();
	//	List<Profile> li = profileService.selectAll(profileID);
		//map.put("prfList", li);
		//return "prof_list";
	//}
	
}
