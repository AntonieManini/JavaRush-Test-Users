package com.anton.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.anton.test.domain.User;
import com.anton.test.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("create")
	public ModelAndView form() {
		return new ModelAndView("create");
	}
	
	@RequestMapping("register")
	public ModelAndView registerUser(@ModelAttribute User user) {
		userService.saveUser(user);
		
		return new ModelAndView("redirect:list");
	}
	
	@RequestMapping("delete")
	public ModelAndView deleteUser(@RequestParam int id) {
		userService.deleteUser(id);
		
		return new ModelAndView("redirect:list");
	}
	
	@RequestMapping("edit")
	public ModelAndView edit(@RequestParam int id) {
		User user = userService.getUserById(id);
		
		return new ModelAndView("edit", "user", user);
	}
	
	@RequestMapping("update")
	public ModelAndView update(@ModelAttribute User user) {
		userService.updateUser(user);
		
		return new ModelAndView("redirect:list");
	}
	
	@RequestMapping("search")
	public ModelAndView search() {
		return new ModelAndView("search");
	}
	
	@RequestMapping("search_user") 
	public ModelAndView searchUser(@RequestParam String name) {
		List<User> users = userService.searchUser(name);
		
		return new ModelAndView("search_list", "result", users);
	}
	
	@RequestMapping("list")
	public ModelAndView getAll() {
		return new ModelAndView("list");//, "userList", userService.getAllUsers());
	}
}
