package edu.northeastern.cs5200.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import edu.northeastern.cs5200.model.Person;



public class PersonDao {
	
	public static PersonDao instance = null;
	public static PersonDao getInstance() {
		if(instance == null) {
			instance = new PersonDao();
		}
		return instance;
	}
	
	public List<Person> findAllPerson() {
		List<Person> persons = new ArrayList<Person>();
		Connection connection = null;
		Statement statement = null;
		ResultSet results = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			try {
				connection = DriverManager.getConnection("jdbc:mysql://cs5200-spring2018-zhang.cu4fpxkflkla.us-east-2.rds.amazonaws.com/hw2_zhang_teng_spring_2018", "teng", "GooDTiM01");
				statement = connection.createStatement();
				String sql= "SELECT * FROM person";
				results = statement.executeQuery(sql);
				while(results.next()) {
					int id = results.getInt("id");
					String firstName = results.getString("firstName");
					String lastName = results.getString("lastName");
					String username = results.getString("username");
					String password = results.getString("password");
					String email = results.getString("email");
					String dob = results.getString("dob");
					Person person = new Person(id, firstName, lastName, username, password, email, dob);
					persons.add(person);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return persons;
	}
}
