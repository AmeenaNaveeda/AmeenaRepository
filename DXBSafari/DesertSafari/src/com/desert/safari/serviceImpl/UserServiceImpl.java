package com.desert.safari.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.desert.safari.dao.UserDao;
import com.desert.safari.services.UserService;
import com.desert.safari.vo.Booking;
import com.desert.safari.vo.User;

public class UserServiceImpl implements  UserService {

	@Autowired
	 public UserDao userDao;
	
	@Override
	public boolean registerUser(User user) {

		return userDao.registerUser(user);
	}

	@Override
	public boolean checkUserNameExist(String username) {
		return userDao.checkUserNameExist(username);
	}

	@Override
	public User validateLogin(User user) {
		
		return userDao.validateLogin(user);
	}

	@Override
	public User getUserDetails(int id) {
		return userDao.getUserDetails(id);

	}

	@Override
	public boolean saveBooking(Booking booking) {
		return userDao.saveBooking(booking);
	}

	@Override
	public List<Booking> getAllBookings(int id) {
		return userDao.getAllBookings(id);
	}

}
