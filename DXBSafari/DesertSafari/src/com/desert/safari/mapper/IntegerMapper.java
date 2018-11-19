package com.desert.safari.mapper;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.desert.safari.vo.User;

public class IntegerMapper implements RowMapper<Integer>  {
	@Override
	public Integer mapRow(ResultSet rs, int rowNum) throws SQLException {
		return rs.getInt("Id");
	}

}
