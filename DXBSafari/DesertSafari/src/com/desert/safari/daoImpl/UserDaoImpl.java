package com.desert.safari.daoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.desert.safari.dao.UserDao;
import com.desert.safari.mapper.BookingDetailsMapper;
import com.desert.safari.mapper.UserDetailsMapper;
import com.desert.safari.vo.Booking;
import com.desert.safari.vo.User;

public class UserDaoImpl<Subscriber> implements UserDao{



	@Autowired
	JdbcTemplate jdbcTemplate;

	/**
	 * registerUser
	 * @param user
	 */
	@Override
	public boolean registerUser(User user) {

		try {
			String sql=null;

			sql= "insert into users (userName,password,firstName,address,lastName,email)values(?,?,?,?,?,?)";
			jdbcTemplate.update(sql, new Object[] {user.getUsername(), user.getPassword(), user.getFirstname(),
					user.getLastname(), user.getEmail(), user.getAddress()});

			StringBuffer phoneNumbers = new StringBuffer();
			if(!("").equals(user.getPhone())) {
				phoneNumbers.append(user.getPhone()).append(',');
			}
			if(!("").equals(user.getPhone1())) {
				phoneNumbers.append(user.getPhone1()).append(',');
			}
			


			String contacts = phoneNumbers.toString().replaceAll(", $", "");

			sql = "select * from users where username='" + user.getUsername() + "'";
			List<User> users = jdbcTemplate.query(sql, new UserDetailsMapper());

			int  id=1;
			if(users.size()!=0) {
				id=users.get(0).getId();
			}

			sql = "insert into contacts (userId,phoneNumber)values(?,?)";
			jdbcTemplate.update(sql, new Object[] {id,contacts});

			return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}


	/**
	 * checkUserNameExist
	 * @param username
	 */
	@Override
	public boolean checkUserNameExist(String username) {

		String sql = "select * from users where username='" + username + "'";
		List<User> users = jdbcTemplate.query(sql, new UserDetailsMapper());
		if(users.size()>0) {
			return true;
		}
		return false;
	}


	/**
	 * validateLogin
	 * 
	 */
	@Override
	public User validateLogin(User user) {

		String sql = "select * from users where username='" + user.getUsername() + "' and password='" + user.getPassword()
		+ "'";
		List<User> users = jdbcTemplate.query(sql, new UserDetailsMapper());
		if(users.size()>0) {
			return users.get(0);
		}
		return null;
	}


	@Override
	public User getUserDetails(int id) {

		String  sql = "select * from users where id='" +id+ "'";
		List<User> users = jdbcTemplate.query(sql, new UserDetailsMapper());
		if(users !=null && users.size() >0) {
			return users.get(0);
		}
		return null;
	}


	/**
	 * saveBooking
	 */

	@Override
	public boolean saveBooking(Booking booking) {

		try {
			String sql= "insert into booking (user_id,name,email,contactNumber,tourType,tourDate)values(?,?,?,?,?,?)";
			jdbcTemplate.update(sql, new Object[] {booking.getUserId(),booking.getName(),booking.getEmail(), booking.getContact(),booking.getTourType(),booking.getDateofTour()});

			return true;

		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}


	@Override
	public List<Booking> getAllBookings(int id) {
	
		String  sql = "select * from booking where user_id='" +id+ "'";
		List<Booking> bookings = jdbcTemplate.query(sql, new BookingDetailsMapper());
		return bookings;
	}




}
