package edu.northeastern.cs5200.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PriviledgeDao {

	public static PriviledgeDao instance = null;
	public static PriviledgeDao getInstance() {
		if(instance == null) {
			instance = new PriviledgeDao();
		}
		return instance;
	}
	
	public int assignWebsitePriviledge(int developerId, int websiteId, int priviledgeId) {

		Connection connection = null;
		PreparedStatement statement = null;
		int result = -1;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			try {
				
				connection = DriverManager.getConnection("jdbc:mysql://cs5200-spring2018-zhang.cu4fpxkflkla.us-east-2.rds.amazonaws.com/hw2_zhang_teng_spring_2018", "teng", "GooDTiM01");
	
				String sql= "INSERT INTO website_priviledge (website, developer, priviledge) VALUES (?, ?, ?)";
				statement = connection.prepareStatement(sql);
				statement.setInt(1, websiteId);
				statement.setInt(2, developerId);
				String type = null;
				switch (priviledgeId) {
				case 1: type = "create";
								break;
				case 2: type = "delete";
								break;
				case 3: type = "read";
								break;
				case 4: type = "update";
								break;
				default:
					break;
				}
				statement.setString(3, type);
				result = statement.executeUpdate();
				
				statement.close();
				connection.close();
				
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
		
		return result;
		
	}
	
	public int assignPagePriviledge(int developerId, int pageId, int priviledgeId) {

		Connection connection = null;
		PreparedStatement statement = null;
		int result = -1;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			try {
				
				connection = DriverManager.getConnection("jdbc:mysql://cs5200-spring2018-zhang.cu4fpxkflkla.us-east-2.rds.amazonaws.com/hw2_zhang_teng_spring_2018", "teng", "GooDTiM01");
	
				String sql= "INSERT INTO page_priviledge (page, developer, priviledge) VALUES (?, ?, ?)";
				statement = connection.prepareStatement(sql);
				statement.setInt(1, pageId);
				statement.setInt(2, developerId);
				String type = null;
				switch (priviledgeId) {
				case 1: type = "create";
								break;
				case 2: type = "delete";
								break;
				case 3: type = "read";
								break;
				case 4: type = "update";
								break;
				default:
					break;
				}
				statement.setString(3, type);
				result = statement.executeUpdate();
				
				statement.close();
				connection.close();
				
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
		
		return result;
		
	}

	public int deleteWebsitePriviledge(int developerId, int websiteId, int priviledgeId) {
		
		
		Connection connection = null;
		PreparedStatement statement = null;
		int result = -1;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			try {
				
				connection = DriverManager.getConnection("jdbc:mysql://cs5200-spring2018-zhang.cu4fpxkflkla.us-east-2.rds.amazonaws.com/hw2_zhang_teng_spring_2018", "teng", "GooDTiM01");
				String sql= "DELETE FROM website_priviledge WHERE website = ? AND developer = ? AND priviledge = ?";
				statement = connection.prepareStatement(sql);
				statement.setInt(1, websiteId);
				statement.setInt(2, developerId);
				String type = null;
				switch (priviledgeId) {
				case 1: type = "create";
								break;
				case 2: type = "delete";
								break;
				case 3: type = "read";
								break;
				case 4: type = "update";
								break;
				default:
					break;
				}
				statement.setString(3, type);
				result = statement.executeUpdate();
				
				statement.close();
				connection.close();
				
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
		return result;
	}
	
	public int deletePagePriviledge(int developerId, int pageId, int priviledgeId) {
		
		
		Connection connection = null;
		PreparedStatement statement = null;
		int result = -1;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			try {
				
				connection = DriverManager.getConnection("jdbc:mysql://cs5200-spring2018-zhang.cu4fpxkflkla.us-east-2.rds.amazonaws.com/hw2_zhang_teng_spring_2018", "teng", "GooDTiM01");
				String sql= "DELETE FROM page_priviledge WHERE page = ? AND developer = ? AND priviledge = ?";
				statement = connection.prepareStatement(sql);
				statement.setInt(1, pageId);
				statement.setInt(2, developerId);
				String type = null;
				switch (priviledgeId) {
				case 1: type = "create";
								break;
				case 2: type = "delete";
								break;
				case 3: type = "read";
								break;
				case 4: type = "update";
								break;
				default:
					break;
				}
				statement.setString(3, type);
				result = statement.executeUpdate();
				
				statement.close();
				connection.close();
				
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
		return result;
	}
}
