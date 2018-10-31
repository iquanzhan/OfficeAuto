package com.chengxiaoxiao.domain;

import java.util.Date;


public class Users {
	private int ID;
	private String Uid;
	private String Pwd;
	private String IdCard;
	private String FamilyAddress;
	private String PhoneNum;
	private String Email;
	private String School;
	private String Gender;
	private String HeadImage;
	private String Birthday;
	private String RealName;
	private int RoleId;
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getUid() {
		return Uid;
	}
	public void setUid(String uid) {
		Uid = uid;
	}
	public String getPwd() {
		return Pwd;
	}
	public void setPwd(String pwd) {
		Pwd = pwd;
	}
	public String getIdCard() {
		return IdCard;
	}
	public void setIdCard(String idCard) {
		IdCard = idCard;
	}
	public String getFamilyAddress() {
		return FamilyAddress;
	}
	public void setFamilyAddress(String famileAddress) {
		FamilyAddress = famileAddress;
	}
	public String getPhoneNum() {
		return PhoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		PhoneNum = phoneNum;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	
	public String getSchool() {
		return School;
	}
	public void setSchool(String school) {
		School = school;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getHeadImage() {
		return HeadImage;
	}
	public void setHeadImage(String headImage) {
		HeadImage = headImage;
	}
	public String getBirthday() {
		return Birthday;
	}
	public void setBirthday(String birthday) {
		Birthday = birthday;
	}
	public String getRealName() {
		return RealName;
	}
	public void setRealName(String realName) {
		RealName = realName;
	}
	public int getRoleId() {
		return RoleId;
	}
	public void setRoleId(int roleId) {
		RoleId = roleId;
	}
}
