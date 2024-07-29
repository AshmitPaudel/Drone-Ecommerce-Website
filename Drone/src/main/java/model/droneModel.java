package model;

import java.util.ArrayList;

import Dao.RegisterUser;

public class droneModel {
	
	private String fullName;
	private String gender;
	private static String email;
	private static String password;
	private static String phone;
	private String province;
	private String city;
	private static String userName;
	private String street;
	
	
	public droneModel() {}//fullName,email,password,gender,phone,province,city

	public droneModel(String fullName, String email, String password, String gender,
			String phone,String province,String city, String userName,String street) {
		super();
		this.userName=userName;
		this.fullName = fullName;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.province = province;
		this.street = street;
		this.password = password;
		this.city = city;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public static String getEmail() {
		return email;
	}

	public static void setEmail(String email) {
		droneModel.email = email;
	}

	public static String getPassword() {
		return password;
	}

	public static void setPassword(String password) {
		droneModel.password = password;
	}

	public static String getPhone() {
		return phone;
	}

	public static void setPhone(String phone) {
		droneModel.phone = phone;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public static String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public ArrayList<RegisterUser> getAllUserInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	
	

	
	
}