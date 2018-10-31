package com.chengxiaoxiao.domain;

import java.util.Date;


public class Notes {
   private int ID;
   private String Content;
   private Date SubTime;
   private int UserId;
public int getID() {
	return ID;
}
public void setID(int iD) {
	ID = iD;
}
public String getContent() {
	return Content;
}
public void setContent(String content) {
	Content = content;
}
public Date getSubTime() {
	return SubTime;
}
public void setSubTime(Date subTime) {
	SubTime = subTime;
}
public int getUserId() {
	return UserId;
}
public void setUserId(int userId) {
	UserId = userId;
}
}
