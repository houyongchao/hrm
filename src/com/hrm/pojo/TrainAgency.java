package com.hrm.pojo;

import java.util.List;

public class TrainAgency {
	private String id;
	private String names;
	private String address;
	private String contact;
	private String contacttels;
	private String contactemail;
	private List<Trainning> trainList;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNames() {
		return names;
	}
	public void setNames(String names) {
		this.names = names;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getContacttels() {
		return contacttels;
	}
	public void setContacttels(String contacttels) {
		this.contacttels = contacttels;
	}
	public String getContactemail() {
		return contactemail;
	}
	public void setContactemail(String contactemail) {
		this.contactemail = contactemail;
	}
	public List<Trainning> getTrainList() {
		return trainList;
	}
	public void setTrainList(List<Trainning> trainList) {
		this.trainList = trainList;
	}
	
	
}
