package com.teji.model;

import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

public class BreakFast {
	

	public String _id;
 	public String userId;
 	public String meal;
 	public double calories;
 	public String dateTimeStamp;
 	
	public BreakFast() {
		
	}

	public BreakFast(String userId, String meal,double calories) {
	
		this.userId = userId;
		this.meal = meal;
		this.calories=calories;
		
	}

	
	public Map<String, Object> toMap() {
 		Map<String, Object> map = new HashMap<String, Object>();
 		map.put("userId", userId);
 		map.put("meal", meal);
 		map.put("calories", calories);
 		map.put("dateTimeStamp", new java.util.Date());
 		return map;
 	}

	@Override
	public String toString() {
		return "BreakFast [_id=" + _id + ", userId=" + userId + ", meal=" + meal + ", calories=" + calories
				+ "]";
	}
	
 	
}