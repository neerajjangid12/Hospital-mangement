/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.entity.Appointment;
import com.entity.Doctor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author NEERAJ
 */
public class AppointmentDao {

    private Connection conn;

    public AppointmentDao(Connection conn) {
        super();
        this.conn = conn;
    }

    public boolean addAppointment(Appointment ap){
        boolean f = false;
        try {
            String sql = "insert into appointments(user_id, fullname, gender, age, appoint_date, email, diseases, doctor_id, address, status,phoneNo) values(?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, ap.getUserId());
            pre.setString(2, ap.getFullName());
            pre.setString(3, ap.getGender());
            pre.setString(4, ap.getAge());
            pre.setString(5, ap.getAppointmentDate());
            pre.setString(6, ap.getEmail());
            
            pre.setString(7, ap.getDiseases());
            pre.setInt(8, ap.getDoctorId());
            pre.setString(9, ap.getAddress());
            pre.setString(10, ap.getStatus());
            pre.setString(11, ap.getPhNo());
            int i = pre.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    public List<Appointment> getAllAppointments(int userid){
        List<Appointment> list=new ArrayList<Appointment>();
        Appointment ap=null;
        try {
            String sql="select * from appointments where user_id=?";
            PreparedStatement pre=conn.prepareStatement(sql);
            pre.setInt(1, userid);
            ResultSet set=pre.executeQuery();
            while (set.next()) {                
                ap=new Appointment();
                ap.setId(set.getInt(1));
                ap.setUserId(set.getInt(2));
                ap.setFullName(set.getString(3));
                ap.setGender(set.getString(4));
                ap.setAge(set.getString(5));
                ap.setAppointmentDate(set.getString(6));
                ap.setEmail(set.getString(7));
                ap.setDiseases(set.getString(8));
                ap.setDoctorId(set.getInt(9));
                ap.setAddress(set.getString(10));
                ap.setStatus(set.getString(11));
                ap.setPhNo(set.getString(12));
                list.add(ap);
            }
        
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    //for getting details into view appointment section table
    public List<Appointment> getAllAppointmentsByDoctorId(int doctorId){
        List<Appointment> list=new ArrayList<Appointment>();
        Appointment ap=null;
        try {
            String sql="select * from appointments where doctor_id=?";
            PreparedStatement pre=conn.prepareStatement(sql);
            pre.setInt(1, doctorId);
            ResultSet set=pre.executeQuery();
            while (set.next()) {                
                ap=new Appointment();
                ap.setId(set.getInt(1));
                ap.setUserId(set.getInt(2));
                ap.setFullName(set.getString(3));
                ap.setGender(set.getString(4));
                ap.setAge(set.getString(5));
                ap.setAppointmentDate(set.getString(6));
                ap.setEmail(set.getString(7));
                ap.setDiseases(set.getString(8));
                ap.setDoctorId(set.getInt(9));
                ap.setAddress(set.getString(10));
                ap.setStatus(set.getString(11));
                ap.setPhNo(set.getString(12));
                list.add(ap);
            }
        
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    //for comment section form 
    
     public Appointment getAllAppointmentsById(int id){
        Appointment ap=null;
        try {
            String sql="select * from appointments where id=?";
            PreparedStatement pre=conn.prepareStatement(sql);
            pre.setInt(1, id);
            ResultSet set=pre.executeQuery();
            while (set.next()) {                
                ap=new Appointment();
                ap.setId(set.getInt(1));
                ap.setUserId(set.getInt(2));
                ap.setFullName(set.getString(3));
                ap.setGender(set.getString(4));
                ap.setAge(set.getString(5));
                ap.setAppointmentDate(set.getString(6));
                ap.setEmail(set.getString(7));
                ap.setDiseases(set.getString(8));
                ap.setDoctorId(set.getInt(9));
                ap.setAddress(set.getString(10));
                ap.setStatus(set.getString(11));
                ap.setPhNo(set.getString(12));

            }
        
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ap;
    }
    
    public boolean updateCommentStatus(int id,int doctid,String comm){
        boolean f=false;
        try {
            String sql="update appointments set status=? where id=? and doctor_id=?";
            PreparedStatement pre=conn.prepareStatement(sql);
            pre.setString(1, comm);
            pre.setInt(2, id);
            pre.setInt(3, doctid);
            int i=pre.executeUpdate();
            if (i==1) {
                f=true;
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    
}
