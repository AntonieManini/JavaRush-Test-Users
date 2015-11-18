package com.anton.test.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.anton.test.domain.User;

@Repository
@Transactional
public class UserDaoImpl implements UserDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public User getUserById(int id) {
		return (User) sessionFactory.getCurrentSession().get(User.class, id);
	}

	@SuppressWarnings("unchecked")
	public List<User> getAllUsers() {		
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(User.class);
		
		return criteria.list();
	}

	public int saveUser(User user) {
		return (Integer) sessionFactory.getCurrentSession().save(user);
	}

	public void updateUser(User user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user);		
	}

	public void deleteUser(int id) {
		User user = getUserById(id);
		
		sessionFactory.getCurrentSession().delete(user);		
	}
	
	@SuppressWarnings("unchecked")
	public List<User> searchUser(String name) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(User.class);
		criteria.add(Restrictions.ilike("name", name));
		
		return criteria.list();
	}

}
