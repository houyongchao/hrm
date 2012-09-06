package com.hrm.pojo;


public class Dimission {
	private String id;
	private String leavedate;
	private String reason;
	private String approver;
	private Working work;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLeavedate() {
		return leavedate;
	}
	public void setLeavedate(String leavedate) {
		this.leavedate = leavedate;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getApprover() {
		return approver;
	}
	public void setApprover(String approver) {
		this.approver = approver;
	}
	
	
	public Working getWork() {
		return work;
	}
	public void setWork(Working work) {
		this.work = work;
	}
	
	

}
