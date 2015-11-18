package com.anton.test.domain;

import java.sql.Timestamp;
import javax.persistence.*;


@Entity
@Table(name="user")
public class User {
	@Id
	@Column(name="id", length=8)
	@GeneratedValue
	private int id;
	
	@Column(name="name", length=25)
	private String name;
	
	@Column
	private int age;
	
	@Column
	private Boolean isAdmin;
	private Timestamp createdDate;
	
	
	public User(String name, int age, boolean isAdmin, Timestamp createdDate) {
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
	public void setAdmin(Boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
	public Timestamp getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Timestamp createdDate) {
		this.createdDate = createdDate;
	}	
}
