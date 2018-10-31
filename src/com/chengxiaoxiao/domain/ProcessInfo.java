package com.chengxiaoxiao.domain;

import java.util.Date;


public class ProcessInfo {
	private int ID;
	private int ProcessId;
	private Date SubTime;
	private int ProcessStatus;
	private String Title;
	private String Content;
	private int applyUserId;
	private int checkUserId;
	private Date checkTime;
	private int checkStatus;
	
	

	public int getApplyUserId() {
		return applyUserId;
	}
	public void setApplyUserId(int applyUserId) {
		this.applyUserId = applyUserId;
	}
	public int getCheckUserId() {
		return checkUserId;
	}
	public void setCheckUserId(int checkUserId) {
		this.checkUserId = checkUserId;
	}
	public Date getCheckTime() {
		return checkTime;
	}
	public void setCheckTime(Date checkTime) {
		this.checkTime = checkTime;
	}
	public int getCheckStatus() {
		return checkStatus;
	}
	public void setCheckStatus(int checkStatus) {
		this.checkStatus = checkStatus;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getProcessId() {
		return ProcessId;
	}
	public void setProcessId(int processId) {
		ProcessId = processId;
	}
	public Date getSubTime() {
		return SubTime;
	}
	public void setSubTime(Date subTime) {
		SubTime = subTime;
	}
	public int getProcessStatus() {
		return ProcessStatus;
	}
	public void setProcessStatus(int processStatus) {
		ProcessStatus = processStatus;
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
