package com.desert.safari.services;

import java.util.List;

import com.desert.safari.vo.Booking;
import com.desert.safari.vo.User;

public interface UserService {
	
	
	/**
	 * registerUser
	 * @param user
	 * @return
	 */
boolean registerUser(User user);

/**
 * checkUserNameExist
 * @param username
 * @return
 */
boolean checkUserNameExist(String username);
/**
 * validateLogin
 * @param user
 * @return
 */
User validateLogin(User user);

/**
 * getUserDetails
 * @param id
 * @return
 */
User getUserDetails(int id);

/**
 * 
 * @param booking
 * @return
 */
boolean saveBooking(Booking booking);

List<Booking> getAllBookings(int id);

}
