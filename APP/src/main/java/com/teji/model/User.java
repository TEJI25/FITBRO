package com.teji.model;

import java.util.HashMap;
import java.util.Map;

public class User {

	public String _id;
	public String name;
	public String email;
	public String password;
	public String city;
	
	
	public User() {
		
	}


	public User(String name, String email, String password, String city) {
		this.name = name;
		this.email = email;
		this.password = password;
		this.city = city;
	}
	
	public Map<String , Object> toMap(){
		Map<String , Object> map = new HashMap<String, Object>();
		map.put("name", name);
		map.put("email", email);
		map.put("password", password);
		map.put("city", city);
	
		return map;
		
	}


	@Override
	public String toString() {
		return "User [_id=" + _id + ", name=" + name + ", email=" + email + ", password=" + password + ", city=" + city
				+ "]";
	}


	
	
	
	
	
	
}
