package com.anton.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anton.test.dao.UserDao;
import com.anton.test.domain.User;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	public User getUserById(int id) {
		return userDao.getUserById(id);
	}

	public List<User> getAllUsers(int page) {
		if (userDao == null) System.out.println("No userDao");
		else System.out.println("Yes userDao");
		
		return userDao.getAllUsers(page);
	}

	public int saveUser(User user) {	
		return userDao.saveUser(user);
	}

	public void updateUser(User user) {
		userDao.updateUser(user);
	}

	public void deleteUser(int id) {
		userDao.deleteUser(id);
	}

	public List<User> searchUser(String name) {
		return userDao.searchUser(name);
	}
	
	public int countUsers() {
		return userDao.getTotalNumberOfUsers();
	}
}
