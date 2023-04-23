<%-- 
    Document   : view_appointment
    Created on : 28 Mar, 2023, 6:28:56 PM
    Author     : NEERAJ
--%>
<%@page import="com.entity.User"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.db.DbConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Appointments</title>
        <%@ include file="components/AllCss.jsp" %>
    </head>
    <body class="bg-violet-50">
        <c:if test="${empty userObj }">
		<c:redirect url="UserLogin.jsp"></c:redirect>
	</c:if>
        <%@ include file="components/Navbar.jsp"%>
        <section >
            <div class="h-52 overflow-hidden">
                <img src="./img/4.jpg" alt="alt" class="bg-cover w-full"/>
            </div>
        </section>
        <div class="container mx-auto ">


            <div class="flex flex-row justify-between mt-5 ">
                <div class="w-2/3 shadow-xl text-center"> 
                    <h3 class="pt-4 text-2xl text-center text-success">Appointment List</h3>
                    <div class="bg-white mt-5">

                        <div class="overflow-x-auto border-x">
                            <table class="table-auto w-full border-2">
                                <thead class="border-b">
                                    <tr class="bg-gray-100">
                                        <th class="text-left p-2 py-3 font-medium">Full Name</th>
                                        <th class="text-left p-2 py-3 font-medium">Gender</th>
                                        <th class="text-left p-2 py-3 font-medium">Age</th>
                                        <th class="text-left p-2 py-3 font-medium">Appoint Date</th>
                                        <th class="text-left p-2 py-3 font-medium">Diseases</th>
                                        <th class="text-left p-2 py-3 font-medium">Doctor Name</th>
                                        <th class="text-left p-2 py-3 font-medium">Status</th>
                                    </tr>
                                </thead>
                                <tbody class="border-2 border-gray-300 border-x">
                                    <%
                                        User user = (User) session.getAttribute("userObj");
                                        DoctorDao dao1 = new DoctorDao(DbConnect.getConn());
                                        AppointmentDao dao2 = new AppointmentDao(DbConnect.getConn());
                                        List<Appointment> list = dao2.getAllAppointments(user.getId());
                                        
                                        
                                        for (Appointment ap : list) {
                                            
                                        Doctor d = dao1.getDoctorById(ap.getDoctorId());
                                    %>
                                    <tr>
                                        <td class="py-2"><%=ap.getFullName()%></td>
                                        <td><%=ap.getGender()%></td>
                                        <td><%=ap.getAge()%></td>
                                        <td><%=ap.getAppointmentDate()%></td>
                                        <td><%=ap.getDiseases()%></td>
                                        <td><%=d.getFullName()%></td>
                                        <td>
                                            <% if ("pending".equals(ap.getStatus())) {%>
                                            <a href="#" class="px-3 py-1 rounded-lg text-white bg-green-500">Pending</a>
                                            <%} else {%>
                                            <%=ap.getStatus()%>
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
                <div class="w-1/3 ml-5 shadow-xl rounded-xl">

                    <img src="./img/5.jpg" alt="alt"/>

                </div>
            </div>

        </div>

    </body>
</html> 
