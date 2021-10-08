package com.teji.model;

public class BMI {

	static float height;
	static float weight;
	
	static float BMI  = weight/height*height;
	
	
	public BMI() {
		
	}


	public BMI(float height, float weight, float bMI) {
		super();
		this.height = height;
		this.weight = weight;
		BMI = bMI;
	}


	@Override
	public String toString() {
		return "BMI [height=" + height + ", weight=" + weight + ", BMI=" + BMI + "]";
	}
	
	
	
	
}
