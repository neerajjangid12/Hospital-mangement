package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.entity.User;
import com.mysql.cj.protocol.Resultset;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
	private Connection con;

	public UserDao(Connection con) {
		super();
		this.con = con;
	}
	public boolean Register(User u) {
		boolean f=false;
		try {
			String q="insert into user_details(fullname,email,password) values(?,?,?)";
			PreparedStatement pre=con.prepareStatement(q);
			pre.setString(1, u.getFullName()); 
			pre.setString(2, u.getEmail());
			pre.setString(3, u.getPassword());
			int i=pre.executeUpdate();
			if (i==1) {
				f=true;
                                System.err.println("success");
			}
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
	}
        public User login(String email,String password){
            User u=null;
            try {
                String sql="select * from user_details where email=? and password=?";
                PreparedStatement pre=con.prepareStatement(sql);
                pre.setString(1,email);
                pre.setString(2, password);
                ResultSet set= pre.executeQuery();
                while (set.next()) {
                    u=new User();
                    u.setId(set.getInt(1));
                    u.setFullName(set.getString(2));
                    u.setEmail(set.getString(3));
                    u.setPassword(set.getString(4));
                    
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return u;
        }
}
