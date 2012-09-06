package com.hrm.pojo;

import java.util.HashSet;
import java.util.Set;

public class Account {
	private String id;
	private String username;
	private String password;
	private Group group;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Group getGroup() {
		return group;
	}
	public void setGroup(Group group) {
		this.group = group;
	}
	public Set<String> getGroupNames(){
		Set<String> set = new HashSet<String>();
		set.add(getGroup().getNames());
		return set;
	}
	

}
