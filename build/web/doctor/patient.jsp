<%-- 
    Document   : patient
    Created on : 31 Mar, 2023, 11:38:59 AM
    Author     : NEERAJ
--%>

<%@page import="java.util.List"%>
<%@page import="com.entity.Appointment"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.db.DbConnect"%>
<%@page import="com.entity.Doctor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="AllCss.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patients</title>
    </head>
    <body>
        <c:if test="${empty docObj}">
            <c:redirect url="../DoctorLogin.jsp"></c:redirect>
        </c:if>
        <%@include file="navbar.jsp" %>
        <div class="w-full shadow-xl text-center container mx-auto"> 
            <h3 class="pt-4 text-2xl text-center font-semibold">Patients Details</h3>
            <c:if test="${not empty msg}">
                <h1 class="text-center text-xl text-green-700 font-bold">${msg}</h1>
                <c:remove var="msg" scope="session"/>
            </c:if>
            <c:if test="${not empty error_msg}">
                <h1 class="text-center text-xl text-green-700 font-bold">${error_msg}</h1>
                <c:remove var="error_msg" scope="session"/>
            </c:if>
            <div class="bg-white mt-5">

                <div class="overflow-x-auto border-x">
                    <table class="table-auto w-full border-2">
                        <thead class="border-b">
                            <tr class="bg-gray-100">
                                <th class="text-left p-2 py-3 font-medium">Full Name</th>
                                <th class="text-left p-2 py-3 font-medium">Gender</th>
                                <th class="text-left p-2 py-3 font-medium">Age</th>
                                <th class="text-left p-2 py-3 font-medium">Appointment Date</th>
                                <th class="text-left p-2 py-3 font-medium">Email</th>
                                <th class="text-left p-2 py-3 font-medium">Mob No.</th>
                                <th class="text-left p-2 py-3 font-medium">Diseases</th>
                                <th class="text-left p-2 py-3 font-medium">Status</th>
                                <th class="text-left p-2 py-3 font-medium">Action</th>
                            </tr>
                        </thead>
                        <tbody class="border-2 border-gray-300 border-x space-y-5">
                            <%
                                Doctor d = (Doctor) session.getAttribute("docObj");
                                DoctorDao dao1 = new DoctorDao(DbConnect.getConn());
                                AppointmentDao dao2 = new AppointmentDao(DbConnect.getConn());
                                List<Appointment> list = dao2.getAllAppointmentsByDoctorId(d.getId());

                                for (Appointment ap : list) {

                            %>
                            <tr class="">
                                <td class="py-3"><%=ap.getFullName()%></td>
                                <td><%=ap.getGender()%></td>
                                <td><%=ap.getAge()%></td>
                                <td><%=ap.getAppointmentDate()%></td>
                                <td><%=ap.getEmail()%></td>
                                <td><%=ap.getPhNo()%></td>
                                <td><%=ap.getDiseases()%></td>

                                <td><%=ap.getStatus()%></td>

                                <td>
                                    <%
                                        if ("pending".equals(ap.getStatus())) {%>
                                    <a href="comment.jsp?id=<%=ap.getId()%>" class="px-3 py-1 rounded-lg text-white bg-green-500">Comment</a>
                                    <%} else {%>
                                    <a href="comment.jsp?id=<%=ap.getId()%>" style="pointer-events: none" class="px-3 py-1 rounded-lg text-white bg-gray-400 disabled">Comment</a>
                                    <%}%>

                                    

                                </td>
                            </tr>


                            <%}

                            %>

                        </tbody>
                    </table>
                </div>
            </div>


        </div>
    </body>
</html>
