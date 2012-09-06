package com.hrm.pojo;

public class Transfer {
	private String id;
	private String transferdate;
	private String reason;
	private String beforedepart;
	private String afterdepart;
	private String position;
	private String approver;
	private String createtime;
	private Working worker;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTransferdate() {
		return transferdate;
	}
	public void setTransferdate(String transferdate) {
		this.transferdate = transferdate;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getBeforedepart() {
		return beforedepart;
	}
	public void setBeforedepart(String beforedepart) {
		this.beforedepart = beforedepart;
	}
	public String getAfterdepart() {
		return afterdepart;
	}
	public void setAfterdepart(String afterdepart) {
		this.afterdepart = afterdepart;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getApprover() {
		return approver;
	}
	public void setApprover(String approver) {
		this.approver = approver;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	
	public Working getWorker() {
		return worker;
	}
	public void setWorker(Working worker) {
		this.worker = worker;
	}
	
	

}
