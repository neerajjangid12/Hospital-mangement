/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.user.Servlet;

import com.dao.AppointmentDao;
import com.db.DbConnect;
import com.entity.Appointment;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author NEERAJ
 */
public class AppointmentServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int userid=Integer.parseInt(request.getParameter("userid"));
        String fullname=request.getParameter("fullName");
        String gender=request.getParameter("gender");
        String age=request.getParameter("age");
        String appoint_date=request.getParameter("appoint_date");
        String email=request.getParameter("email");
        String phno=request.getParameter("phno");
        String diseases=request.getParameter("diseases");
        int doctor_id=Integer.parseInt(request.getParameter("doc_id"));
        String address=request.getParameter("address");
        HttpSession session=request.getSession();
        Appointment ap=new Appointment(userid,fullname, gender, age,appoint_date,email,phno,diseases,doctor_id,address,"pending");
        AppointmentDao dao=new AppointmentDao(DbConnect.getConn());
        
        if(dao.addAppointment(ap)){
            
            session.setAttribute("msg", "Appointment Successfully Registered");
            response.sendRedirect("user_Appointment.jsp");
        }
        else{
            System.out.println("else block executing");
            session.setAttribute("error_msg","something went wrong on server");
            response.sendRedirect("user_Appointment.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
