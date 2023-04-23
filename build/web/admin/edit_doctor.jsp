<%-- 
    Document   : edit_doctor
    Created on : 23 Mar, 2023, 1:51:37 PM
    Author     : NEERAJ
--%>

<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Specialist"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.db.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="AllCss.jsp"%>
        <title>EDIT</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container mx-auto">
            <div class="bg-white p-2 rounded-lg shadow-xl w-1/3 mt-3 mx-auto">
                <h3 class="pt-4 text-2xl text-center">Add Doctor</h3>
                <c:if test="${not empty msg }">
                    <h1 class="text-center text-3xl text-green-700 font-bold">${msg}</h1>
                    <c:remove var="msg" scope="session"/>
                </c:if>
                <c:if test="${not empty error_msg }">
                    <h1 class="text-center text-3xl text-rose-700 font-bold">${error_msg}</h1>
                    <c:remove var="error_msg" scope="session"/>
                </c:if>
                    <%
                    int id=Integer.parseInt(request.getParameter("id"));
                    DoctorDao dao2=new DoctorDao(DbConnect.getConn());
                    Doctor d=dao2.getDoctorById(id);
                    
                    
                    %>
                <form class="px-8 pt-6 pb-8 mb-4 bg-white rounded" action="../UpdateDoctor" method="post">
                    <div class="mb-4">
                        <div class="mb-4 md:mr-2 md:mb-0">
                            <label class="block mb-2 text-sm font-bold text-gray-700" for="firstName">
                                Full Name
                            </label>
                            <input
                                class="w-full px-3 py-2 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline"
                                id="firstName"
                                type="text"
                                name="fullName"
                                value="<%=d.getFullName()%>"
                                />
                        </div>
                    </div>
                    <div class="mb-4">
                        <label class="block mb-2 text-sm font-bold text-gray-700" for="email">
                            Email
                        </label>
                        <input
                            class="w-full px-3 py-2 mb-3 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline"
                            id="email"
                            type="email"
                            name="email"
                            value="<%=d.getEmail()%>"
                            />
                    </div>
                    <div class="mb-4">
                        <label class="block mb-2 text-sm font-bold text-gray-700" for="Qualification">
                            Qualification
                        </label>
                        <input
                            class="w-full px-3 py-2 mb-3 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline"
                            id="email"
                            type="text"
                            name="qualification"
                            value="<%=d.getQualification()%>"
                            />
                    </div>
                    <div class="mb-4">
                        <label class="block mb-2 text-sm font-bold text-gray-700" for="DOB">
                            DOB
                        </label>
                        <input
                            class="w-full px-3 py-2 mb-3 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline"
                            id="email"
                            type="date"
                            name="dob"
                            value="<%=d.getDob()%>"
                            />
                    </div>
                    <div class="mb-4">
                        <label class="block mb-2 text-sm font-bold text-gray-700" for="Specialist">
                            Specialist
                        </label>
                        <select name="spec" class="w-full px-3 py-2 mb-3 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline">
                            <option><%=d.getSpecialist()%></option>
                            <%
                                SpecialistDao dao = new SpecialistDao(DbConnect.getConn());
                                List<Specialist> list = dao.getAllspecialist();
                                for (Specialist s : list) {%>
                            <option><%=s.getSpecialistName()%></option>
                            <%}
                            %>

                        </select>
                    </div>
                    <div class="mb-4">
                        <label class="block mb-2 text-sm font-bold text-gray-700" for="Mobile">
                            Mob No
                        </label>
                        <input
                            class="w-full px-3 py-2 mb-3 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline"
                            id="email"
                            type="text"
                            name="mobNo"
                            value="<%=d.getMobNo()%>"
                            />
                    </div>

                    <div class="mb-4 md:mr-2 md:mb-0">
                        <label class="block mb-2 text-sm font-bold text-gray-700" for="password">
                            Password
                        </label>
                        <input
                            class="w-full px-3 py-2 mb-3 text-sm leading-tight text-gray-700 border border-red-500 rounded shadow appearance-none focus:outline-none focus:shadow-outline"
                            id="password"
                            type="text"
                            placeholder="******************"
                            name="password"
                            value="<%=d.getPassword()%>"
                            />
                        <p class="text-xs italic text-red-500">Please choose a password.</p>
                    </div>
                            <input type="hidden" name="id" value="<%=d.getId()%>">
                    <div class="mb-6 text-center">
                        <button
                            class="w-full px-4 py-2 font-bold text-white bg-black rounded-full hover:bg-blue-700 focus:outline-none focus:shadow-outline"
                            type="submit"
                            >
                            Update
                        </button>
                    </div>
                    
                </form>
            </div>
        </div>
    </body>
</html>
