package com.anton.test.service;

import java.util.List;

import com.anton.test.domain.User;

public interface UserService {
	User getUserById(int id);
	
	List<User> getAllUsers();
	
	int saveUser(User user);
	
	void updateUser(User user);
	
	void deleteUser(int id);
	
	List<User> searchUser(String name);
}
