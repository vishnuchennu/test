package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsersDao {
	public static Connection getConnection() {
		Connection connection = null;

		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

		 connection = DriverManager
					.getConnection("jdbc:sqlserver://DESKTOP-LUEKPCC\\SQLEXPRESS:1433;dataBase=master", "GSI", "GLORY");

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}

		return connection;
	}
	
	 public boolean saveUser(Users users){
	        boolean set = false;
	        try{
	            //Insert register data to database
	            String query = "insert into users values(?,?,?)";
	           Connection connection = UsersDao.getConnection();
	           PreparedStatement pt =connection.prepareStatement(query);
	           
	           pt.setString(1, users.getName());
	           pt.setString(2, users.getEmail());
	           pt.setString(3, users.getPassword());
	           
	           pt.executeUpdate();
	           set = true;
	        }catch(Exception e){
	            e.printStackTrace();
	        }
	        return set;
	    }
	
	
	//user login
	
	 public Users logUser(String email, String pass){
	        Users usr=null;
	        try{
	            String query ="select * from users where email=? and password=?";
	            Connection connection = UsersDao.getConnection();
	            PreparedStatement pst =connection.prepareStatement(query);
	            pst.setString(1, email);
	            pst.setString(2, pass);
	            
	            ResultSet rs = pst.executeQuery();
	            
	            if(rs.next()){
	               usr = new Users();
	                usr.setId(rs.getInt("id"));
	                usr.setName(rs.getString("name"));
	                usr.setEmail(rs.getString("email"));
	                usr.setPassword(rs.getString("password"));
	                
	            }
	            
	        }catch(Exception e){
	            e.printStackTrace();
	        }
	        return usr;
	    }

	

	
	
	
	
	
}
