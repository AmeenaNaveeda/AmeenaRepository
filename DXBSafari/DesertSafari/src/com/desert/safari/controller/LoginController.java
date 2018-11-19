package com.desert.safari.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.desert.safari.mail.AppConfig;
import com.desert.safari.mail.service.MailService;
import com.desert.safari.services.UserService;
import com.desert.safari.vo.Contact;
import com.desert.safari.vo.User;

@Controller
public class LoginController {

	@Autowired
	private UserService userService;
	
	@Autowired
    MailService mailService;

	/**
	 * showLogin
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("login");
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
	@RequestMapping(value = "/validateLogin", method = RequestMethod.POST)
	public ModelAndView registerUser(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("user") User user) {

		User result= userService.validateLogin(user);
		ModelAndView mav = new ModelAndView();
		if(result !=null) {
			mav.setViewName("welcome");
			mav.addObject("username", user.getUsername());
			mav.addObject("id", result.getId());
			mav.addObject("user", result);
		}else {
			mav.setViewName("login");
			mav.addObject("message", "Invalid username/Password");
		}
		return mav;
	}
	
	/**
	 * loadHome
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView loadHome(@RequestParam("id") int id,HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("welcome");
		mav.addObject("id",id);
		return mav;
	}
	

	
	/**
	 * loadReview
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/review", method = RequestMethod.GET)
	public ModelAndView loadReview(@RequestParam("id")int id,HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("review");
		mav.addObject("id",id);
		return mav;
	}
	

	/**
	 * LoadContact
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public ModelAndView loadContact(@RequestParam("id")int id,HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("contact");
		mav.addObject("id",id);
		Contact contact=new Contact();
		contact.setUserId(id);
		mav.addObject("contact", contact);
		return mav;
	}
	/**
	 *loadSignout
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/signout", method = RequestMethod.GET)
	public ModelAndView loadSignout(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("signout");
		return mav;
	}
	
	/**
	 * sendMessage
	 * @param request
	 * @param response
	 * @param user
	 * @return
	 */
	@RequestMapping(value = "/sendMessage", method = RequestMethod.POST)
	public ModelAndView sendMessage(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("contact") Contact contact) {
		 AbstractApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
		 mailService.sendEmail(contact);
		ModelAndView mav = new ModelAndView("contact");
		mav.addObject("message", "Your message send successfully");
		mav.addObject("id",contact.getUserId());
		contact.setMessage("");
		contact.setName("");
		contact.setSubject("");
		mav.addObject("contact", contact);
		return mav;
	}
	
	/**
	 * LoadHomeContacts
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/contactHome", method = RequestMethod.GET)
	public ModelAndView loadHomeContact(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("homeContacts");
		mav.addObject("contact", new  Contact());
		return mav;
	}
	
	/**
	 * sendHomeMessage
	 * @param request
	 * @param response
	 * @param user
	 * @return
	 */
	@RequestMapping(value = "/sendHomeMessage", method = RequestMethod.POST)
	public ModelAndView sendHomeMessage(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("contact") Contact contact) {
		 AbstractApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
		 mailService.sendEmail(contact);
		ModelAndView mav = new ModelAndView("homeContacts");
		mav.addObject("message", "Your message send successfully");
		mav.addObject("contact", new  Contact());
		return mav;
	}
	

}
