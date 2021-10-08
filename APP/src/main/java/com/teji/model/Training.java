package com.teji.model;

import java.util.HashMap;
import java.util.Map;

public class Training {
	
public String _id;
public String userId;

public String name;
public String age;
public double weight;
public String sex;
public String dateTimeStamp;


public Training() {
	
}


public Training(String userId,String name, String age, double weight, String sex) {
	this.userId = userId;
	this.name = name;
	this.age = age;
	this.weight = weight;
	this.sex = sex;
}
	
public Map<String, Object> toMap() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("name", name);
		map.put("age", age);
		map.put("weight", weight);
		map.put("sex", sex);
		map.put("dateTimeStamp", new java.util.Date());
		return map;
	}


@Override
public String toString() {
	return "Training [_id=" + _id + ", userId=" + userId + ", name=" + name + ", age=" + age + ", weight=" + weight
			+ ", sex=" + sex + "]";
}

	
	
	
	
	
	
}
