package com.chengxiaoxiao.domain;

import java.util.Date;


public class Notices {
	private int ID;
	private String RoleName;
	private Date SubTime;
	private int NoticeLevel;
	private String Title;
	private String Content;
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getRoleName() {
		return RoleName;
	}
	public void setRoleName(String roleName) {
		RoleName = roleName;
	}
	public Date getSubTime() {
		return SubTime;
	}
	public void setSubTime(Date subTime) {
		SubTime = subTime;
	}
	public int getNoticeLevel() {
		return NoticeLevel;
	}
	public void setNoticeLevel(int noticeLevel) {
		NoticeLevel = noticeLevel;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	
	
}
