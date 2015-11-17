package com.anton.test.domain;

import java.util.Date;

public class User {
	private int id;
	private String name;
	private int age;
	private boolean isAdmin;
	private Date createdDate;
	
	
	public User(String name, int age, boolean isAdmin, Date createdDate) {
		this.name = name;
		this.age = age;
		this.isAdmin = isAdmin;
		this.createdDate = createdDate;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public boolean isAdmin() {
		return isAdmin;
	}
	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}	
}
