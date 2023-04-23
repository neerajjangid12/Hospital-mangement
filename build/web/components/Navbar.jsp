<%@ include file="AllCss.jsp"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<div class="bg-blue-300 h-12 flex items-center">
    <div class="flex flex-row justify-between container mx-auto items-center">
        <div class="space-x-3">
            <i class="fa-regular fa-hospital"></i>
            <a href="#" class="text-amber-50 text-lg font-semibold">Medi</a> 
            <a
                href="index.jsp" class="text-amber-50 text-lg font-semibold">Home</a>
        </div>
        <div class="space-x-3 flex flex-row items-center">
            <c:if test="${not empty userObj}">
                <a
                    href="user_Appointment.jsp" class="text-amber-50 text-lg font-semibold">Appointment</a>
                <a
                    href="view_appointment.jsp" class="text-amber-50 text-lg font-semibold">View Appointment</a>
                <div>
                    <button class="bg-success text-black px-3 py-2 font-bold  rounded-md peer focus:bg-gray-400 focus:text-gray-200 transition-all duration-200  "><i class="fa-solid fa-circle-user"></i>   ${userObj.fullName}</button>
                    <div class=' w-96 absolute top-5 z-10
                         after:content-[""] after:inline-block after:absolute after:top-0 after:bg-white/40
                         after:w-full after:h-full after:-z-20 after:blur-[2px] after:rounded-lg
                         peer-focus:top-12 peer-focus:opacity-100 peer-focus:visible
                         transition-all duration-300 invisible  opacity-0
                         '><ul class='py-4 flex flex-col space-y-5'>
                            <li><a class='cursor-pointer bg-sky-300 p-3 rounded-md hover:opacity-90 text-white ' href="#">Change Password</a></li>
                            <li><a class='cursor-pointer bg-sky-300 p-3 rounded-md hover:opacity-90 text-white' href="UserLogout">Logout</a></li>
                        </ul>
                    </div>
                </div>
            </c:if>
            <c:if test="${empty userObj}">
  
            <i class="fa-solid fa-right-to-bracket"></i>
            <a href="Admin_login.jsp" class="text-amber-50 text-lg font-semibold">Admin</a> <a
                href="DoctorLogin.jsp" class="text-amber-50 text-lg font-semibold">Doctor</a> <a
                href="user_Appointment.jsp" class="text-amber-50 text-lg font-semibold">Appointment</a> <a
                href="UserLogin.jsp" class="text-amber-50 text-lg font-semibold">User</a>
            </c:if>
            </div>
    </div>
</div>