package com.desert.safari.mapper;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.desert.safari.vo.User;

public class UserDetailsMapper implements RowMapper<User>  {
	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {

		User user = new User();
		user.setUsername(rs.getString("username"));
		user.setPassword(rs.getString("password"));
		user.setFirstname(rs.getString("firstName"));
		user.setLastname(rs.getString("lastName"));
		user.setEmail(rs.getString("email"));
		user.setAddress(rs.getString("address"));
		user.setId(rs.getInt("id"));
		return user;
	}

}
