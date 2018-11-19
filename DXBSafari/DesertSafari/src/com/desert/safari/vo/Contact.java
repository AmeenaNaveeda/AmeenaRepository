package com.desert.safari.vo;

public class Contact {



	/**
	 * id
	 */
	private Integer id;
	/**
	 * name
	 */
	private String name;

	/**
	 * email
	 */
	private String email;

	/**
	 * suject
	 */
	private String subject;

	/**
	 * message
	 */
	private String message;
	
	/**
	 * userId
	 */
	private Integer userId;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	
	
	

}
