package com.desert.safari.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.desert.safari.services.UserService;
import com.desert.safari.vo.Booking;
import com.desert.safari.vo.User;

@Controller
public class BookingController {

	@Autowired
	private UserService userService;

	/**
	 * desertSafari
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value ="/events", method = RequestMethod.GET)
	public ModelAndView loadEvent(@RequestParam("id") int id,HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("events");
		Booking booking =new Booking();
		mav.addObject("id", id);
		booking.setUserId(id);
		mav.addObject("booking", booking);
		return mav;
	}


	/**
	 * 
	 * @param request
	 * @param response
	 * @param Booking
	 * @return
	 */
	@RequestMapping(value ="/bookSafari", method = RequestMethod.POST)
	public ModelAndView bookSafari(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("booking") Booking booking) {

		ModelAndView mav = new ModelAndView();

		boolean result= userService.saveBooking(booking);

		if(result) {
			booking.setName("");
			booking.setEmail("");
			booking.setContact("");
			booking.setDateofTour("");
			booking.setTourType("");
			mav.setViewName("events");
			mav.addObject("id", booking.getUserId());
			mav.addObject("message", "Booking saved successfully");

		}else {
			mav.setViewName("events");
			mav.addObject("message", "Unable to create booking");
		}

		return mav;
	}


	/**
	 * viewBookings
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value ="/viewBookings", method = RequestMethod.GET)
	public ModelAndView viewBooking(@RequestParam("id") int id,HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("viewBookings");
		List<Booking> bookingList=userService.getAllBookings(id);
		mav.addObject("bookingList", bookingList);
		return mav;
	}

}
