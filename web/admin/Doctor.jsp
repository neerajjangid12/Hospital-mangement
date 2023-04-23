<%-- 
    Document   : Doctor.jsp
    Created on : 21 Mar, 2023, 12:24:05 AM
    Author     : NEERAJ
--%>

<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Specialist"%>
<%@page import="com.db.DbConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin | Doctor Page</title>
        <%@ include file="AllCss.jsp"%>
    </head>
    <body class="">
        <%@include file="navbar.jsp" %>
        <!-- component -->
        <!-- Container -->
        <div class="container mx-auto">
            <div class="flex justify-between ">

                <div class="bg-white p-2 rounded-lg shadow-xl w-1/3 mt-3">
                    <h3 class="pt-4 text-2xl text-center">Add Doctor</h3>
                    <c:if test="${not empty msg }">
                        <h1 class="text-center text-3xl text-green-700 font-bold">${msg}</h1>
                        <c:remove var="msg" scope="session"/>
                    </c:if>
                    <c:if test="${not empty error_msg }">
                        <h1 class="text-center text-3xl text-rose-700 font-bold">${error_msg}</h1>
                        <c:remove var="error_msg" scope="session"/>
                    </c:if>
                    <form class="px-8 pt-6 pb-8 mb-4 bg-white rounded" action="../AddDoctor" method="post">
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
                                />
                        </div>
                        <div class="mb-4">
                            <label class="block mb-2 text-sm font-bold text-gray-700" for="Specialist">
                                Specialist
                            </label>
                            <select name="spec" class="w-full px-3 py-2 mb-3 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline">
                                <option>--select--</option>
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
                                />
                        </div>

                        <div class="mb-4 md:mr-2 md:mb-0">
                            <label class="block mb-2 text-sm font-bold text-gray-700" for="password">
                                Password
                            </label>
                            <input
                                class="w-full px-3 py-2 mb-3 text-sm leading-tight text-gray-700 border border-red-500 rounded shadow appearance-none focus:outline-none focus:shadow-outline"
                                id="password"
                                type="password"
                                placeholder="******************"
                                name="password"
                                />
                            <p class="text-xs italic text-red-500">Please choose a password.</p>
                        </div>

                        <div class="mb-6 text-center">
                            <button
                                class="w-full px-4 py-2 font-bold text-white bg-black rounded-full hover:bg-blue-700 focus:outline-none focus:shadow-outline"
                                type="submit"
                                >
                                Register Account
                            </button>
                        </div>
                        <hr class="mb-6 border-t" />
                        <div class="text-center">
                            <a
                                class="inline-block text-sm text-blue-500 align-baseline hover:text-blue-800"
                                href="#"
                                >
                                Forgot Password?
                            </a>
                        </div>
                        <div class="text-center">
                            <a
                                class="inline-block text-sm text-blue-500 align-baseline hover:text-blue-800"
                                href="./index.html"
                                >
                                Already have an account? Login!
                            </a>
                        </div>
                    </form>
                </div>


                <div
                    class=" lg:w-2/3  rounded-l-lg shadow-lg ml-5 mt-4"
                    >
                    <h3 class="pt-4 text-2xl text-center">Doctor Details</h3>
                    <div class="bg-white mt-5">

                        <div class="overflow-x-auto border-x">
                            <table class="table-auto w-full border-2">
                                <thead class="border-b">
                                    <tr class="bg-gray-100">
                                        <th class="text-left p-2 py-3 font-medium">Full Name</th>
                                        <th class="text-left p-2 py-3 font-medium">DOB</th>
                                        <th class="text-left p-2 py-3 font-medium">Qualification</th>
                                        <th class="text-left p-2 py-3 font-medium">Specialist</th>
                                        <th class="text-left p-2 py-3 font-medium">Email</th>
                                        <th class="text-left p-2 py-3 font-medium">Mob No</th>
                                        <th class="text-left p-2 py-3 font-medium">Action</th>
                                    </tr>
                                </thead>
                                <tbody class="border-2 border-gray-300 border-x">
                                    <%
                                        DoctorDao dao2=new DoctorDao(DbConnect.getConn());
                                        List<Doctor> list2=dao2.getAllDoctor();
                                        for(Doctor  d:list2){%>
                                        <tr class="text-center ">
                                            <td class="py-3"><%=d.getFullName()%></td>
                                            <td><%=d.getDob()%></td>
                                            <td><%=d.getQualification()%></td>
                                            <td><%=d.getSpecialist()%></td>
                                            <td><%=d.getEmail()%></td> 
                                            <td><%=d.getMobNo()%></td>
                                            <td>
                                                <a href="edit_doctor.jsp?id=<%=d.getId()%>" class="px-3 py-2 bg-green-500 rounded-md">Edit</a>
                                                <a href="../DeleteDoctor?id=<%=d.getId()%>" class="px-3 py-2 bg-red-500 rounded-md">Delete</a>   
                                            </td>
                                            
                                        </tr>
                                        
                                        <%}
                                         %>
                                    
                                   
                                    
                                    
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>


                </div>
            </div>
        </div>






    </body>
</html>
