<%@ include file="AllCss.jsp"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<div class="bg-blue-500 h-12 flex items-center">
    <div class="flex flex-row justify-between container mx-auto ">
        <div class="space-x-8 flex flex-row items-center">
            <div>
                <i class="fa-regular fa-hospital"></i>
                <a href="#" class="text-amber-50 text-lg font-semibold">Medi</a> 
                <a
                    href="index.jsp" class="text-amber-50 text-lg font-semibold">Home</a>
            </div>

            <div class="space-x-3">
                <a href="index.jsp" class="text-amber-50 text-lg">HOME</a> <a
                    href="patient.jsp" class="text-amber-50 text-lg">PATIENT</a>
            </div>
        </div>
        <div>
            <button class="bg-white text-black px-3 py-2 font-bold  rounded-md peer focus:bg-gray-400 focus:text-gray-200 transition-all duration-200  ">${docObj.fullName}</button>
            <div class=' w-48 absolute top-5 z-10
                 after:content-[""] after:inline-block after:absolute after:top-0 after:bg-white/40
                 after:w-full after:h-full after:-z-20 after:blur-[2px] after:rounded-lg
                 peer-focus:top-12 peer-focus:opacity-100 peer-focus:visible
                 transition-all duration-300 invisible  opacity-0
                 '><ul class='py-6 px-9 flex flex-col space-y-5'>
                    <li><a class='cursor-pointer bg-sky-300 p-3 rounded-md hover:opacity-90 text-white' href="../Adminlogout">Edit Profile</a></li>
                    <li><a class='cursor-pointer bg-sky-300 p-3 rounded-md hover:opacity-90 text-white' href="../DoctorLogout">Logout</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>