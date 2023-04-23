/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.entity;

/**
 *
 * @author NEERAJ
 */
public class Doctor {
    private String fullName,email,qualification,dob,specialist,mobNo,password;
    private int id; 

    public Doctor() {
        super();
    }

    public Doctor(String fullName, String email, String qualification, String dob, String specialist, String mobNo, String password) {
        this.fullName = fullName;
        this.email = email;
        this.qualification = qualification;
        this.dob = dob;
        this.specialist = specialist;
        this.mobNo = mobNo;
        this.password = password;
    }

    public Doctor(int id, String fullName, String email, String qualification, String dob, String spec, String mobNo, String password) {
        this.fullName = fullName;
        this.email = email;
        this.qualification = qualification;
        this.dob = dob;
        this.specialist = spec;
        this.mobNo = mobNo;
        this.password = password;
        this.id=id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getSpecialist() {
        return specialist;
    }

    public void setSpecialist(String specialist) {
        this.specialist = specialist;
    }

    public String getMobNo() {
        return mobNo;
    }

    public void setMobNo(String mobNo) {
        this.mobNo = mobNo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
     
    
}
