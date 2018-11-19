package com.desert.safari.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.desert.safari.services.UserService;
import com.desert.safari.vo.User;

@Controller
public class AdminController {

	@Autowired
	private UserService userService;

	/**
	 * profile
	 * @param request
	 * @param response
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/profile/{id}", method = RequestMethod.GET)
	public ModelAndView showProfile(@ PathVariable("id") int id,HttpServletRequest request, HttpServletResponse response) {

		User user=userService.getUserDetails(id);
		ModelAndView mav = new ModelAndView("profile");
		mav.addObject("userDetails", user);
		return mav;
	}


}
