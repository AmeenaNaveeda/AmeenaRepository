package com.desert.safari.vo;

public class Booking {

	private Integer bookingId;
	private Integer userId;
	private String name;
	private String email;
	private String contact;

	private String tourType;
	private String tourTypeDesc;
	private String dateofTour;
	private String pickupLocation;

	private Integer adult;

	private Integer Child;

	private String message;


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
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getTourType() {
		return tourType;
	}
	public void setTourType(String tourType) {
		this.tourType = tourType;
	}

	public String getPickupLocation() {
		return pickupLocation;
	}
	public void setPickupLocation(String pickupLocation) {
		this.pickupLocation = pickupLocation;
	}
	public Integer getAdult() {
		return adult;
	}
	public void setAdult(Integer adult) {
		this.adult = adult;
	}
	public Integer getChild() {
		return Child;
	}
	public void setChild(Integer child) {
		Child = child;
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
	public String getDateofTour() {
		return dateofTour;
	}
	public void setDateofTour(String dateofTour) {
		this.dateofTour = dateofTour;
	}
	public String getTourTypeDesc() {
		return tourTypeDesc;
	}
	public void setTourTypeDesc(String tourTypeDesc) {
		this.tourTypeDesc = tourTypeDesc;
	}
	public Integer getBookingId() {
		return bookingId;
	}
	public void setBookingId(Integer bookingId) {
		this.bookingId = bookingId;
	}




}
