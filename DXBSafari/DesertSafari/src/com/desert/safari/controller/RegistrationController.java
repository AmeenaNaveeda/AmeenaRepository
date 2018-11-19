package com.desert.safari.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.desert.safari.services.UserService;
import com.desert.safari.vo.User;

/**
 * 
 * @author Akhila k.P
 * RegistrationController
 */
@Controller
public class RegistrationController {

	@Autowired
	private UserService userService;


	/**
	 * showRegister
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("user", new User());
		return mav;
	}

	/**
	 * registerUser
	 * @param request
	 * @param response
	 * @param user
	 * @return
	 */
	@RequestMapping(value = "/registerUser", method = RequestMethod.POST)
	public ModelAndView registerUser(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("user") User user) {

		ModelAndView mav = new ModelAndView();
		boolean userNameExist=userService.checkUserNameExist(user.getUsername());
		
		if(!userNameExist) {

			boolean result= userService.registerUser(user);

			if(result) {
				User u=userService.validateLogin(user);
				mav.setViewName("welcome");
				mav.addObject("id", u.getId());
				mav.addObject("username", user.getUsername());
				mav.addObject("message", "User registrartion completed.");

			}else {
				mav.setViewName("login");
				mav.addObject("message", "User registrartion failed.");
			}
		}else {
			mav.setViewName("login");
			mav.addObject("message","Username already exist");
		}
		return mav;
	}



}
