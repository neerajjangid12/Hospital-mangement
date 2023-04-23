<%-- 
    Document   : comment
    Created on : 31 Mar, 2023, 12:30:07 PM
    Author     : NEERAJ
--%>
<%@page import="com.entity.Appointment"%>
<%@page import="com.db.DbConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="AllCss.jsp"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>comment</title>
    </head>
    <body>
        <c:if test="${empty docObj}">
            <c:redirect url="../DoctorLogin.jsp"></c:redirect>
        </c:if>
        <%@include file="navbar.jsp" %>
        <section>
            <div class="h-52 overflow-hidden">
                <img src="../img/4.jpg" alt="alt" class="bg-cover w-full"/>
            </div>
        </section>
        <div class="container mx-auto">
            <div class="w-1/2 shadow-xl mt-10 mx-auto">
                <h1 class="text-center text-3xl font-semibold">Patient Comment</h1>
                <c:if test="${not empty msg}">
                    <h1 class="text-center text-xl text-green-700 font-bold">${msg}</h1>
                    <c:remove var="msg" scope="session"/>
                </c:if>
                <c:if test="${not empty error_msg}">
                    <h1 class="text-center text-xl text-green-700 font-bold">${error_msg}</h1>
                    <c:remove var="error_msg" scope="session"/>
                </c:if>

                <%
                    int id = Integer.parseInt(request.getParameter("id"));
                    AppointmentDao dao = new AppointmentDao(DbConnect.getConn());
                    Appointment ap = dao.getAllAppointmentsById(id);


                %>

                <form class="px-8 pt-6 pb-8 mb-4 bg-white rounded" action="../UpdateStatus" method="post">


                    <div class="mb-4 flex-row flex justify-between space-x-3">
                        <div class="mb-4 w-1/2">
                            <label class="block mb-2 text-sm font-bold text-gray-700" for="firstName">
                                Patient Name
                            </label>
                            <input
                                class="w-full px-3 py-2 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline"
                                value="<%=ap.getFullName()%>"
                                type="text"
                                name="fullName"
                                />
                        </div>
                        <div class="mb-4 w-1/2">
                            <label class="block mb-2 text-sm font-bold text-gray-700" for="email">
                                Age
                            </label>
                            <input
                                class="w-full px-3 py-2 mb-3 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline"
                                value="<%=ap.getAge()%>"
                                type="number"
                                name="age"
                                />
                        </div>
                    </div>


                    <div class="mb-4 flex-row flex justify-between space-x-3">
                        <div class="mb-4 w-1/2">
                            <label class="block mb-2 text-sm font-bold text-gray-700" for="Mobile">
                                Phone No
                            </label>
                            <input
                                class="w-full px-3 py-2 mb-3 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline"
                                value="<%= ap.getPhNo()%>"
                                type="text"
                                name="phno"
                                />
                        </div>
                        <div class="mb-4 w-1/2">
                            <label class="block mb-2 text-sm font-bold text-gray-700" for="Qualification">
                                Diseases    
                            </label>
                            <input
                                class="w-full px-3 py-2 mb-3 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline"
                                value="<%= ap.getDiseases()%>"
                                type="text"
                                name="diseases"
                                />
                        </div>



                    </div>
                    <div class="mb-4 md:mr-2 md:mb-0">
                        <label class="block mb-2 text-sm font-bold text-gray-700" for="password">
                            Comment
                        </label>
                        <textarea name="comment" class="w-full border-2 h-36"></textarea>

                    </div>
                     <div class="text-center mt-5"><!-- comment -->
                        
                            <button
                                class="w-1/3 px-5 py-3 font-bold text-white bg-black rounded-full hover:bg-blue-700 focus:outline-none focus:shadow-outline"
                                type="submit"
                                >
                                Submit
                            </button>
                        
                        </div>

                    <input type="hidden" name="id" value="<%= ap.getId()%>">
                    <input type="hidden" name="did" value="<%= ap.getDoctorId()%>">
                </form>
            </div>
        </div>

    </body>
</html>
