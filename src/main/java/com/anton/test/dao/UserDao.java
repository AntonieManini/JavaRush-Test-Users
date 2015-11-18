package com.anton.test.dao;

import java.util.List;

import com.anton.test.domain.User;

public interface UserDao {
	
	User getUserById(int id);
	
	List<User> getAllUsers();
	
	int saveUser(User user);
	
	void updateUser(User user);
	
	void deleteUser(int id);
	
	List<User> searchUser(String name);
}
