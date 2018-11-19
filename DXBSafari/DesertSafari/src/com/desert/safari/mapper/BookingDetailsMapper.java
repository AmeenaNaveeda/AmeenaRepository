package com.desert.safari.mapper;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.desert.safari.vo.Booking;

public class BookingDetailsMapper implements RowMapper<Booking>  {
	
	public static String ED_STRING="Evening Desert Safari";
	public static String MD_STRING="Morning Desert Safari";
	public static String CM_STRING="Camel Safari";
	@Override
	public Booking mapRow(ResultSet rs, int rowNum) throws SQLException {

		Booking  booking = new Booking();
		booking.setName(rs.getString("name"));
		booking.setTourType(rs.getString("tourType"));
		if("ED".equals(booking.getTourType())) {
			booking.setTourTypeDesc(ED_STRING);
		}else if("MD".equals(booking.getTourType())) {
			booking.setTourTypeDesc(MD_STRING);
			
		}else if("CM".equals(booking.getTourType())) {
			booking.setTourTypeDesc(CM_STRING);
			
		}
		booking.setDateofTour(rs.getString("tourDate"));
		booking.setBookingId(rs.getInt("id"));
		return booking;

	}

}
