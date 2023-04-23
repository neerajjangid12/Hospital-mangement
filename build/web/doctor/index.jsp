<%-- 
    Document   : index
    Created on : 25 Mar, 2023, 12:37:15 PM
    Author     : NEERAJ
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="AllCss.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor Admin</title>
    </head>
    <body>
        <c:if test="${empty docObj}">
            <c:redirect url="../DoctorLogin.jsp"></c:redirect>
        </c:if>
        <%@include file="navbar.jsp" %>
        <section class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-4 py-6">
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-2 gap-6">
                <div class=" bg-white rounded-lg shadow-xl overflow-hidden flex flex-col justify-center items-center text-success py-8">
                    <i class="fas fa-user-md fa-4x"></i>
                    <p class="text-xl font-bold mb-2">Doctor</p>
                    <p class="text-2xl font-normal">5</p>
                </div>
                

                <div class=" bg-white rounded-lg shadow-xl overflow-hidden flex flex-col justify-center items-center text-success py-8">
                    <i class="far fa-calendar-check fa-4x"></i>
                    <p class="text-xl font-bold mb-2">Total Appointments</p>
                    <p class="text-2xl font-normal">5</p>
                </div>
                
            </div>

        </section>
    </body>
</html>
