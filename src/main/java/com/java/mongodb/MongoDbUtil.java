package com.java.mongodb;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoDatabase;

public class MongoDbUtil {

	static MongoClient mongoClient=null;
	
	
	public static MongoDatabase getDatabase(String name)
	{
		if(mongoClient==null)
		{
			mongoClient=MongoClients.create("mongodb://localhost:27017");
			System.out.println(mongoClient);
		}
		return mongoClient.getDatabase(name);
	}
	
}
