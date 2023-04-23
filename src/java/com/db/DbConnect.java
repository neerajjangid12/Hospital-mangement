package com.db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnect {
	public static Connection conn;
	 public static Connection getConn(){
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","Neeraj@123");
                    if (conn.isClosed()) {
                        System.out.println("Closed");
                    }
                    else{
                        System.out.println("Open");
                    }
	        }
	        catch (ClassNotFoundException | SQLException e) {
	            e.printStackTrace();
	        }
	        return conn;
	    }

}
