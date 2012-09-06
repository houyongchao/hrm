package com.hrm.pojo;

public class Vacation {
	private String id;
	private String applicationdate;
	private String category;
	private String begindate;
	private String enddate;
	private String xiaojiadate;
	private String approver;
	private String beizhu;
	private String days;
	private Working worker;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getApplicationdate() {
		return applicationdate;
	}
	public void setApplicationdate(String applicationdate) {
		this.applicationdate = applicationdate;
	}
	
	
	
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getBegindate() {
		return begindate;
	}
	public void setBegindate(String begindate) {
		this.begindate = begindate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getXiaojiadate() {
		return xiaojiadate;
	}
	public void setXiaojiadate(String xiaojiadate) {
		this.xiaojiadate = xiaojiadate;
	}
	public String getApprover() {
		return approver;
	}
	public void setApprover(String approver) {
		this.approver = approver;
	}
	public String getBeizhu() {
		return beizhu;
	}
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	
	public Working getWorker() {
		return worker;
	}
	public void setWorker(Working worker) {
		this.worker = worker;
	}
	
	
	
}
