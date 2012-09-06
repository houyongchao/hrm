package com.hrm.pojo;


public class Trainning {
	private String id;
	private String kechengname;
	private String category;
	private String depart;
	private String begindate;
	private String enddate;
	private String keshi;
	private String beizhu;
	private TrainAgency agency;
	private  Working worker;
	
	
	public String getBeizhu() {
		return beizhu;
	}
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getKechengname() {
		return kechengname;
	}
	public void setKechengname(String kechengname) {
		this.kechengname = kechengname;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDepart() {
		return depart;
	}
	public void setDepart(String depart) {
		this.depart = depart;
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
	public String getKeshi() {
		return keshi;
	}
	public void setKeshi(String keshi) {
		this.keshi = keshi;
	}
	public TrainAgency getAgency() {
		return agency;
	}
	public void setAgency(TrainAgency agency) {
		this.agency = agency;
	}
	public Working getWorker() {
		return worker;
	}
	public void setWorker(Working worker) {
		this.worker = worker;
	}

	
	
	

}
