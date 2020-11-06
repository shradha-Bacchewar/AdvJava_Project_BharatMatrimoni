package com.cdac.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="shr")

public class User {
	@Id
	@GeneratedValue
	@Column(name="user_id")
		private int userId;
	@Column(name="user_name")
		private String userName;
	@Column(name="user_pass")
		private String userPass;
	@Column(name="user_mob")
		private String mobNum;
	@Column(name="user_gen")
	private String Gender;
	@Column(name="user_mail")
	private String EmailId;
	
	@Column(name = "profile_pic")
	private String profilePic;
	
	
		public String getProfilePic() {
		return profilePic;
	}
	public void setProfilePic(String profilePic) {
		this.profilePic = profilePic;
	}
		public User() {
			super();
		}
		public int getUserId() {
			return userId;
		}
		public void setUserId(int userId) {
			this.userId = userId;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getUserPass() {
			return userPass;
		}
		public void setUserPass(String userPass) {
			this.userPass = userPass;
		}
		public String getMobNum() {
			return mobNum;
		}
		public void setMobNum(String mobNum) {
			this.mobNum = mobNum;
		}
		public String getGender() {
			return Gender;
		}
		public void setGender(String gender) {
			Gender = gender;
		}
		public String getEmailId() {
			return EmailId;
		}
		public void setEmailId(String emailId) {
			EmailId = emailId;
		}
		
}
