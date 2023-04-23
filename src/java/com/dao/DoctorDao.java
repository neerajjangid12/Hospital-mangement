/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

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
public class DoctorDao {

    private Connection conn;

    public DoctorDao(Connection conn) {
        this.conn = conn;
    }

    public boolean registerDoctor(Doctor d) {
        boolean f = false;
        try {
            String sql = "insert into Doctor(fullname,email,qualification,dob,specialist,mobno,password) values(?,?,?,?,?,?,?)";
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, d.getFullName());
            pre.setString(2, d.getEmail());
            pre.setString(3, d.getQualification());
            pre.setString(4, d.getDob());
            pre.setString(5, d.getSpecialist());
            pre.setString(6, d.getMobNo());
            pre.setString(7, d.getPassword());
            int i = pre.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public List<Doctor> getAllDoctor() {
        List<Doctor> list = new ArrayList<Doctor>();
        Doctor d = null;
        try {
            String sql = "select * from Doctor order by id desc";
            PreparedStatement pre = conn.prepareStatement(sql);

            ResultSet set = pre.executeQuery();
            while (set.next()) {
                d = new Doctor();
                d.setId(set.getInt(1));
                d.setFullName(set.getString(2));
                d.setEmail(set.getString(3));
                d.setQualification(set.getString(4));
                d.setDob(set.getString(5));
                d.setSpecialist(set.getString(6));
                d.setMobNo(set.getString(7));
                d.setPassword(set.getString(8));
                list.add(d);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public Doctor getDoctorById(int id) {
        Doctor d = null;
        try {
            String sql = "select * from Doctor where id=?";
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, id);
            ResultSet set = pre.executeQuery();
            while (set.next()) {
                d = new Doctor();
                d.setId(set.getInt(1));
                d.setFullName(set.getString(2));
                d.setEmail(set.getString(3));
                d.setQualification(set.getString(4));
                d.setDob(set.getString(5));
                d.setSpecialist(set.getString(6));
                d.setMobNo(set.getString(7));
                d.setPassword(set.getString(8));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return d;
    }

    public boolean UpdateDoctor(Doctor d) {
        boolean f = false;
        try {
            String sql = "update Doctor set fullname=?,email=?,qualification=?,dob=?,specialist=?,mobno=?,password=? where id=?";
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, d.getFullName());
            pre.setString(2, d.getEmail());
            pre.setString(3, d.getQualification());
            pre.setString(4, d.getDob());
            pre.setString(5, d.getSpecialist());
            pre.setString(6, d.getMobNo());
            pre.setString(7, d.getPassword());
            pre.setInt(8, d.getId());
            int i = pre.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public boolean deleteDoctor(int id) {
        boolean f = false;
        try {
            String sql = "delete from doctor where id=?";

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, id);
            int i = pre.executeUpdate();
            if (i == 1) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;

    }

    public Doctor login(String email, String password) {
        Doctor d = null;
        try {
            String sql = "select * from Doctor where email=? and password=?";
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, email);
            pre.setString(2, password);
            ResultSet set = pre.executeQuery();
            while (set.next()) {
                d = new Doctor();
                d.setId(set.getInt(1));
                d.setFullName(set.getString(2));
                d.setEmail(set.getString(3));
                d.setQualification(set.getString(4));
                d.setDob(set.getString(5));
                d.setSpecialist(set.getString(6));
                d.setMobNo(set.getString(7));
                d.setPassword(set.getString(8));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return d;
    }
}
