package com.hrm.pojo;

import java.util.ArrayList;
import java.util.List;


public class Group {
	private String id;
	private String names;
	private List<Account> userList;
	private List<Permission> permissionList;
	
	
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
	
	
	public List<Account> getUserList() {
		return userList;
	}
	public void setUserList(List<Account> userList) {
		this.userList = userList;
	}
	
	public List<Permission> getPermissionList() {
		return permissionList;
	}
	public void setPermissionList(List<Permission> permissionList) {
		this.permissionList = permissionList;
	}
	public List<String> getPermissionNames(){
		List<String> list = new ArrayList<String>();
		for (Permission p : getPermissionList()) {
			list.add(p.getNames());
		}
		return list;
	}
	

}
