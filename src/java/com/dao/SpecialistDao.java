/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.entity.Specialist;
import com.mysql.cj.xdevapi.Result;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author NEERAJ
 */
public class SpecialistDao {
    private Connection con;

    public SpecialistDao(Connection con) {
        this.con = con;
    }
    
    public boolean addSpecialist(String spec){
        boolean f=false;
        try {
            String sql="insert into specialist(spec_name) values(?)";
            PreparedStatement pre=con.prepareStatement(sql);
            pre.setString(1, spec);
            int i=pre.executeUpdate();
            if (i==1) {
                f=true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    public List<Specialist> getAllspecialist(){
        List<Specialist> list=new ArrayList<Specialist>();
        Specialist s=null;
        String sql="select * from specialist";
        PreparedStatement pre;
        try {
            pre = con.prepareStatement(sql);
             ResultSet set=pre.executeQuery();
             while(set.next()){
                    s=new Specialist();
                    s.setId(set.getInt(1));
                    s.setSpecialistName(set.getString(2));
                    list.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SpecialistDao.class.getName()).log(Level.SEVERE, null, ex);
        }
       
        return list;
    }
}
