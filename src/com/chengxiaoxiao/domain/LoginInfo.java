package com.chengxiaoxiao.domain;

import java.util.Date;


public class LoginInfo {
    private int ID;
    private String LoginIP;
    private Date LoginDateTime;
    private String LoginAddress;
    private int UserId;
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getLoginIP() {
		return LoginIP;
	}
	public void setLoginIP(String loginIP) {
		LoginIP = loginIP;
	}
	public Date getLoginDateTime() {
		return LoginDateTime;
	}
	public void setLoginDateTime(Date loginDateTime) {
		LoginDateTime = loginDateTime;
	}
	public String getLoginAddress() {
		return LoginAddress;
	}
	public void setLoginAddress(String loginAddress) {
		LoginAddress = loginAddress;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
}
