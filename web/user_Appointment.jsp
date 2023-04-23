<%@page import="java.util.List"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.db.DbConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Appointment</title>
        <%@ include file="components/AllCss.jsp" %>
    </head>
    <body>
        <%@ include file="components/Navbar.jsp" %>
        <section>
            <div class="h-52 overflow-hidden">
                <img src="./img/4.jpg" alt="alt" class="bg-cover w-full"/>
            </div>
        </section>
        <div class="container mx-auto bg-white">
            <div class="flex flex-row">
                <div class="w-1/2">
                    <img src="./img/5.jpg" alt="alt"/>
                </div>
                <div class="w-1/2 shadow-xl mt-10">
                    <h1 class="text-center text-3xl font-semibold">User Appointment</h1>
                    <c:if test="${not empty msg}">
                        <h1 class="text-center text-xl text-green-700 font-bold">${msg}</h1>
                         <c:remove var="msg" scope="session"/>
                    </c:if>
                        <c:if test="${not empty error_msg}">
                        <h1 class="text-center text-xl text-green-700 font-bold">${error_msg}</h1>
                         <c:remove var="error_msg" scope="session"/>
                    </c:if>

                    
                    
                    <form class="px-8 pt-6 pb-8 mb-4 bg-white rounded" action="AppointmentServlet" method="post">
                        <input type="hidden" name="userid" value="${userObj.id}">
                        
                        <div class="mb-4 flex-row flex justify-between space-x-3">
                            <div class="mb-4 w-1/2">
                                <label class="block mb-2 text-sm font-bold text-gray-700" for="firstName">
                                    Full Name
                                </label>
                                <input
                                    class="w-full px-3 py-2 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline"
                                    id="firstName"
                                    type="text"
                                    name="fullName"
                                    />
                            </div>
                            <div class="w-1/2"><!-- comment -->
                                <label class="block mb-2 text-sm font-bold text-gray-700" for="email">
                                    Gender
                                </label>
                                <select name="gender" class="w-full px-3 py-2 mb-3 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline">
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>



                                </select>
                            </div>
                        </div>
                        <div class="mb-4 flex-row flex justify-between space-x-3">
                            <div class="mb-4 w-1/2">
                                <label class="block mb-2 text-sm font-bold text-gray-700" for="email">
                                    Age
                                </label>
                                <input
                                    class="w-full px-3 py-2 mb-3 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline"
                                    id="email"
                                    type="number"
                                    name="age"
                                    />
                            </div>
                            <div class="mb-4 w-1/2">
                                <label class="block mb-2 text-sm font-bold text-gray-700" for="DOB">
                                    Appointment Date
                                </label>
                                <input
                                    class="w-full px-3 py-2 mb-3 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline"
                                    id="email"
                                    type="date"
                                    name="appoint_date"
                                    />
                            </div>
                        </div>
                        <div class="mb-4 flex-row flex justify-between space-x-3">
                            <div class="mb-4 w-1/2">
                                <label class="block mb-2 text-sm font-bold text-gray-700" for="email">
                                    Email
                                </label>
                                <input
                                    class="w-full px-3 py-2 mb-3 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline"
                                    id="email"
                                    type="email"
                                    name="email"
                                    />
                            </div>
                            <div class="mb-4 w-1/2">
                                <label class="block mb-2 text-sm font-bold text-gray-700" for="Mobile">
                                    Phone No
                                </label>
                                <input
                                    class="w-full px-3 py-2 mb-3 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline"
                                    id="email"
                                    type="text"
                                    name="phno"
                                    />
                            </div>
                        </div>
                        <div class="mb-4 flex-row flex justify-between space-x-3">
                            <div class="mb-4 w-1/2">
                                <label class="block mb-2 text-sm font-bold text-gray-700" for="Qualification">
                                    Diseases    
                                </label>
                                <input
                                    class="w-full px-3 py-2 mb-3 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline"
                                    id="email"
                                    type="text"
                                    name="diseases"
                                    />
                            </div>

                            <div class="mb-4 w-1/2">
                                <label class="block mb-2 text-sm font-bold text-gray-700" for="Specialist">
                                    Doctor
                                </label>
                                <select name="doc_id" class="w-full px-3 py-2 mb-3 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline">
                                    <option>--select--</option>
                                    <%
                                    DoctorDao dao=new DoctorDao(DbConnect.getConn());
                                    List<Doctor> list=dao.getAllDoctor();
                                    for(Doctor d:list ){%>
                                    <option value="<%=d.getId()%>"><%=d.getFullName()%> (<%=d.getSpecialist()%>)</option>
                                        <%}
                                    %>


                                </select>

                            </div>
                                    
                        </div>
                        <div class="mb-4 md:mr-2 md:mb-0">
                            <label class="block mb-2 text-sm font-bold text-gray-700" for="password">
                                Full Address
                            </label>
                            <textarea name="address" class="w-full border-2 h-36"></textarea>

                        </div>

                        
                        <div class="text-center"><!-- comment -->
                        <c:if test="${empty userObj}">
                            <div class="mt-6">
                                <a href="UserLogin.jsp" class="w-1/2 px-36 py-3 mt-4 font-bold text-white bg-black rounded-full hover:bg-blue-700 focus:outline-none focus:shadow-outline ">Submit</a>
                            </div>
                        </c:if>
                        <c:if test="${not empty userObj}">
                            <button
                                class="w-1/2 px-4 py-3 mt-4 font-bold text-white bg-black rounded-full hover:bg-blue-700 focus:outline-none focus:shadow-outline"
                                type="submit"
                                >
                                Submit
                            </button>
                        </c:if>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>