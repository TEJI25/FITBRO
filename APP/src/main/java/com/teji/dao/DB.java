package com.teji.dao;

import java.util.ArrayList;

import org.bson.Document;
import org.bson.types.ObjectId;

import com.mongodb.BasicDBObject;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.UpdateOptions;
import com.mongodb.client.model.Updates;
import com.teji.model.BMI;
import com.teji.model.BreakFast;
import com.teji.model.Dinner;
import com.teji.model.Lunch;
import com.teji.model.Training;
import com.teji.model.User;


public class DB {
	MongoClient mongoClient;

 	public DB() {
 		try {
 			String connectionURL ="mongodb+srv://abcd:waheguruji@cluster0.1qba9.mongodb.net/Java?retryWrites=true&w=majority";
 	    	
 	    	mongoClient = MongoClients.create(connectionURL);

 	    	//System.out.println(getClass().getSimpleName()+" MongoDB Connection Created and Reference to Client Object Obtained");
 	    	System.out.println("STEP 1 DONE");

 		} catch (Exception e) {
 			System.out.println("Something Went Wrong: "+e);
 		}

 	}
 	public boolean SignUpUser(User user) {

 		Document document = new Document(user.toMap());

     	//Insert into DataBase
     	mongoClient.getDatabase("Java").getCollection("User").insertOne(document);
    // 	System.out.println(user.getName()+" Regsitere in MongoDB :)");

 		return true;
 	}

 	public boolean loginUser(User user) {

 		BasicDBObject query = new BasicDBObject();
 		query.put("email", user.email);
 		query.put("password", user.password);

     	// Fetching the Data
     	MongoCursor<Document> cursor = mongoClient.getDatabase("Java").getCollection("User").find(query).iterator();



     	boolean flag =cursor.hasNext();
     	if (flag){
     		
     	
     	Document document=	cursor.next();
     	
     	System.out.println(document.getObjectId("_id"));
     	System.out.println(document.getString("name"));
     	//System.out.println("NOW USER IS ****:"+user);
     	
     	
     	user._id = document.getObjectId("_id").toString();
     	user.name =document.getString("name");
     	
     	System.out.println("NOW USER IS ****:"+user);
     	
     	}	
		return flag;
 	}		
		public boolean logBreakfast(BreakFast breakfast) {

	 		Document document = new Document(breakfast.toMap());

	     	//Insert into DataBase
	     	mongoClient.getDatabase("Java").getCollection("Breakfast").insertOne(document);
	    // 	System.out.println(user.getName()+" Regsitere in MongoDB :)");

	 		return true;
		}	
		
	 		public ArrayList<BreakFast> fetchBreakfast(String userId) {

	 	 		ArrayList<BreakFast> breakfastRecords = new ArrayList<BreakFast>();

	 	 		try {

	 	 			BasicDBObject query = new BasicDBObject();
	 	 			query.put("userId", userId);

	 	 	    	MongoCursor<Document> cursor = mongoClient.getDatabase("Java").getCollection("Breakfast").find(query).iterator();
	 	 	    	while(cursor.hasNext()) {

	 	 	    		Document document = cursor.next();
	 	 	    		BreakFast breakfast= new BreakFast();
	 	 	    		breakfast._id = document.getObjectId("_id").toString();
	 	 	    		breakfast.userId = document.getString("userId");
	 	 	    		breakfast.meal = document.getString("meal");
	 	 	    		breakfast.dateTimeStamp = document.getDate("dateTimeStamp").toString();
	 	 	    		breakfast.calories = document.getDouble("calories");

	 	 	    		breakfastRecords.add(breakfast);
	 	 	    		

	 	 	    	}
	 	 		}catch(Exception e) {
	 	 			System.out.println("Something Went Wrong: "+e);
	 	 		}

	 	 		return breakfastRecords;
	 		}
	 		
	 	 		public void deleteBreakfast(String breakfastId) {

	 	 	 		System.out.println("[DB] Deleting :"+breakfastId);

	 	 	 		BasicDBObject query = new BasicDBObject();

	 	 	 		query.put("_id", new ObjectId(breakfastId));

	 	 	     	// Fetching the Data
	 	 	     	mongoClient.getDatabase("Java").getCollection("Breakfast").deleteOne(query);

	 	 	 	}


	 	 		public void updateBreakfast(String meal,String breakfastId) {
	 	 			
	 	 			//BreakFast breakfast = new BreakFast();
	 	 			

	 	 	 		BasicDBObject query = new BasicDBObject();
	 	 	 		
	 	 	 		query.put("_id", new ObjectId(breakfastId));

	 	 	     	MongoCursor<Document> cursor = mongoClient.getDatabase("Java").getCollection("Breakfast").find(query).iterator();
	 	 	     	Document document = cursor.next();
	 	 	     	document.put("meal",meal);
	 	 	     //	document.put("calories", calories);
	 	 	     	//document.put("calories", breakfast.calories);
	 	 	     	
	 	 	     	
	 	 	     	ObjectId oId = new ObjectId(breakfastId);
	 	 	     	
	 	 	     	System.out.println("[DB]" +document.toJson());

	 	 	     	
	 	 	       // document.put("calories", numCalories);
	 	 	     	//document.put("meal", meal);
	 	 	     	//document.put("meal", meal);
	 	 	     //	mongoClient.getDatabase("Java").getCollection("Lunch").updateOne(Filters.eq("_id", oId), Updates.set("meal", meal));
	 	 	     	//Update into DataBase
	 	 	     	mongoClient.getDatabase("Java").getCollection("Breakfast").updateOne(Filters.eq("_id", oId), Updates.set("meal", meal));
	 	 	     	
	 	 	     	System.out.println("Breakfast Updated");
	 	 		

	 	 	 	}

 	 		public boolean logLunch(Lunch lunch) {

	 		 		Document document = new Document(lunch.toMap());

	 		     	//Insert into DataBase
	 		     	mongoClient.getDatabase("Java").getCollection("Lunch").insertOne(document);
	 		    // 	System.out.println(user.getName()+" Regsitere in MongoDB :)");

	 		 		return true;
	 			}	
	 			
	 		 		public ArrayList<Lunch> fetchLunch(String userId) {

	 		 	 		ArrayList<Lunch> lunchRecords = new ArrayList<Lunch>();

	 		 	 		try {

	 		 	 			BasicDBObject query = new BasicDBObject();
	 		 	 			query.put("userId", userId);

	 		 	 	    	MongoCursor<Document> cursor = mongoClient.getDatabase("Java").getCollection("Lunch").find(query).iterator();
	 		 	 	    	while(cursor.hasNext()) {

	 		 	 	    		Document document = cursor.next();
	 		 	 	    	    Lunch lunch = new Lunch();
	 		 	 	    		lunch._id = document.getObjectId("_id").toString();
	 		 	 	    		lunch.userId = document.getString("userId");
	 		 	 	    		lunch.meal = document.getString("meal");
	 		 	 	    		lunch.dateTimeStamp = document.getDate("dateTimeStamp").toString();
	 		 	 	    		lunch.calories = document.getDouble("calories");

	 		 	 	    		lunchRecords.add(lunch);
	 		 	 	    		

	 		 	 	    	}
	 		 	 		}catch(Exception e) {
	 		 	 			System.out.println("Something Went Wrong: "+e);
	 		 	 		}

	 		 	 		return lunchRecords;
	 		 		}
	 	 		
	 	 		
	 		
	 		 		public void deleteLunch(String lunchId) {

		 	 	 		System.out.println("[DB] Deleting :"+lunchId);

		 	 	 		BasicDBObject query = new BasicDBObject();

		 	 	 		query.put("_id", new ObjectId(lunchId));

		 	 	     	// Fetching the Data
		 	 	     	mongoClient.getDatabase("Java").getCollection("Lunch").deleteOne(query);

		 	 	 	}

	 		 		public void updateLunch(String meal,String lunchId) {
		 	 			
		 	 			//BreakFast breakfast = new BreakFast();
		 	 			

		 	 	 		BasicDBObject query = new BasicDBObject();
		 	 	 		
		 	 	 		query.put("_id", new ObjectId(lunchId));

		 	 	     	MongoCursor<Document> cursor = mongoClient.getDatabase("Java").getCollection("Lunch").find(query).iterator();
		 	 	     	Document document = cursor.next();
		 	 	     	document.put("meal",meal);
		 	 	     	//document.put("calories", breakfast.calories);
		 	 	     	
		 	 	     	
		 	 	     	ObjectId oId = new ObjectId(lunchId);
		 	 	     	
		 	 	     	System.out.println("[DB]" +document.toJson());

		 	 	     	
		 	 	       // document.put("calories", numCalories);
		 	 	     	//document.put("meal", meal);
		 	 	     	//document.put("meal", meal);

		 	 	     	//Update into DataBase
		 	 	     	mongoClient.getDatabase("Java").getCollection("Lunch").updateOne(Filters.eq("_id", oId), Updates.set("meal", meal));
		 	 	     	
		 	 	     	System.out.println("Lunch Updated");
		 	 		

		 	 	 	}

	 		 		
	 		 		
	 		 		public boolean logDinner(Dinner dinner) {

		 		 		Document document = new Document(dinner.toMap());

		 		     	//Insert into DataBase
		 		     	mongoClient.getDatabase("Java").getCollection("Dinner").insertOne(document);
		 		    // 	System.out.println(user.getName()+" Regsitere in MongoDB :)");

		 		 		return true;
		 			}	
		 			
		 		 		public ArrayList<Dinner> fetchDinner(String userId) {

		 		 	 		ArrayList<Dinner> dinnerRecords = new ArrayList<Dinner>();

		 		 	 		try {

		 		 	 			BasicDBObject query = new BasicDBObject();
		 		 	 			query.put("userId", userId);

		 		 	 	    	MongoCursor<Document> cursor = mongoClient.getDatabase("Java").getCollection("Dinner").find(query).iterator();
		 		 	 	    	while(cursor.hasNext()) {

		 		 	 	    		Document document = cursor.next();
		 		 	 	    	   Dinner dinner = new Dinner();
		 		 	 	    	dinner._id = document.getObjectId("_id").toString();
		 		 	 	    	dinner.userId = document.getString("userId");
		 		 	 	    	dinner.meal = document.getString("meal");
		 		 	 	    	dinner.dateTimeStamp = document.getDate("dateTimeStamp").toString();
		 		 	 	    	dinner.calories = document.getDouble("calories");

		 		 	 	    		dinnerRecords.add(dinner);
		 		 	 	    		

		 		 	 	    	}
		 		 	 		}catch(Exception e) {
		 		 	 			System.out.println("Something Went Wrong: "+e);
		 		 	 		}

		 		 	 		return dinnerRecords;
		 		 		}
		 	 		
		 	 		
		 		
		 		 		public void deleteDinner(String dinnerId) {

			 	 	 		System.out.println("[DB] Deleting :"+dinnerId);

			 	 	 		BasicDBObject query = new BasicDBObject();

			 	 	 		query.put("_id", new ObjectId(dinnerId));

			 	 	     	// Fetching the Data
			 	 	     	mongoClient.getDatabase("Java").getCollection("Dinner").deleteOne(query);

			 	 	 	}
		 		 		public void updateDinner(String meal,String dinnerId) {
			 	 			
			 	 			//BreakFast breakfast = new BreakFast();
			 	 			

			 	 	 		BasicDBObject query = new BasicDBObject();
			 	 	 		
			 	 	 		query.put("_id", new ObjectId(dinnerId));

			 	 	     	MongoCursor<Document> cursor = mongoClient.getDatabase("Java").getCollection("Dinner").find(query).iterator();
			 	 	     	Document document = cursor.next();
			 	 	     	document.put("meal",meal);
			 	 	     	//document.put("calories", breakfast.calories);
			 	 	     	
			 	 	     	
			 	 	     	ObjectId oId = new ObjectId(dinnerId);
			 	 	     	
			 	 	     	System.out.println("[DB]" +document.toJson());

			 	 	     	
			 	 	       // document.put("calories", numCalories);
			 	 	     	//document.put("meal", meal);
			 	 	     	//document.put("meal", meal);

			 	 	     	//Update into DataBase
			 	 	     	mongoClient.getDatabase("Java").getCollection("Dinner").updateOne(Filters.eq("_id", oId), Updates.set("meal", meal));
			 	 	     	
			 	 	     	System.out.println("Dinner Updated");
			 	 		

			 	 	 	}


		 		 		
		 		 		
		 		 		
		 		 		public void totalCalories(String userId,String breakfastId) {
		 		 			
		 		 			BreakFast breakfast = new BreakFast();
		 		 			Lunch lunch = new Lunch();
		 		 			Dinner dinner = new Dinner();
		 		 			
		 		 			BasicDBObject query = new BasicDBObject();
	 		 	 			query.put("userId", userId);
	 		 	 			query.put("_id", new ObjectId(breakfastId));
	 		 	 			
		 		 			double totalCalories = breakfast.calories + lunch.calories + dinner.calories;
		 		 			
		 		 			
		 		 			System.out.println(totalCalories);
		 		 			
		 		 			
		 		 			
		 		 		}
		 		 		
		 		 		public void bmiInformation() {
		 		 			
		 		 			
		 		 			BMI bmi = new BMI();
		 		 			
		 		 			
		 		 			
		 		 			if(bmi.equals(17.5f)) {
		 		 				
		 		 				
		 		 				System.out.println("PERSON IS UNDER WIEGHT");
		 		 
		 		 			}else if(bmi.equals(23.5f)) {
		 		 				
		 		 				System.out.println("NORMAL");
		 		 				
		 		 			}
		 		 			
		 		 			
		 		 			
		 		 		}
		 		 		
		 		 		public boolean logTraining(Training training) {

		 			 		Document document = new Document(training.toMap());

		 			     	//Insert into DataBase
		 			     	mongoClient.getDatabase("Java").getCollection("Training").insertOne(document);
		 			    // 	System.out.println(user.getName()+" Regsitere in MongoDB :)");

		 			 		return true;
		 				}	
		 				
		 			 		public ArrayList<Training> fetchTraining(String userId) {

		 			 	 		ArrayList<Training> trainingRecords = new ArrayList<Training>();

		 			 	 		try {

		 			 	 			BasicDBObject query = new BasicDBObject();
		 			 	 			query.put("userId", userId);

		 			 	 	    	MongoCursor<Document> cursor = mongoClient.getDatabase("Java").getCollection("Training").find(query).iterator();
		 			 	 	    	while(cursor.hasNext()) {

		 			 	 	    		Document document = cursor.next();
		 			 	 	    		Training training = new Training();
		 			 	 	    		training._id = document.getObjectId("_id").toString();
		 			 	 	    		training.userId = document.getString("userId");
		 			 	 	    		training.name = document.getString("name");
		 			 	 	    		training.age = document.getString("age");
		 			 	 	    		training.weight= document.getDouble("weight");
		 			 	 	    		training.sex= document.getString("sex");
		 			 	 	    	training.dateTimeStamp	= document.getDate("dateTimeStamp").toString();

		 			 	 	    	trainingRecords.add(training);
		 			 	 	    		

		 			 	 	    	}
		 			 	 		}catch(Exception e) {
		 			 	 			System.out.println("Something Went Wrong: "+e);
		 			 	 		}

		 			 	 		return trainingRecords;
		 			 		}
		 		 		
		}






 	
 	


 
