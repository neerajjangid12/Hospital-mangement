<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ include file="AllCss.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Admin</title>

    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <c:if test="${empty adminObj}">
            <c:redirect url="../Admin_login.jsp"></c:redirect>
        </c:if>
        <h1 class="text-4xl font-semibold text-center">Admin Dashboard</h1>
        <!-- component -->
        <c:if test="${not empty msg }">
            	<h1 class="text-center text-3xl text-green-700 font-bold">${msg}</h1>
            	<c:remove var="msg" scope="session"/>
            </c:if>
            <c:if test="${not empty error_msg }">
            	<h1 class="text-center text-3xl text-rose-700 font-bold">${error_msg}</h1>
            	<c:remove var="error_msg" scope="session"/>
            </c:if>

        <section class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-4 py-6">
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-2 gap-6">
                <div class=" bg-white rounded-lg shadow-xl overflow-hidden flex flex-col justify-center items-center text-success py-8">
                    <i class="fas fa-user-md fa-4x"></i>
                    <p class="text-xl font-bold mb-2">Doctor</p>
                    <p class="text-2xl font-normal">5</p>
                </div>
                <div class=" bg-white rounded-lg shadow-xl overflow-hidden flex flex-col justify-center items-center text-success">
                    <i class="fas fa-user-circle fa-4x"></i>
                    <p class="text-xl font-bold mb-2">User</p>
                    <p class="text-2xl font-normal">5</p>
                </div>

                <div class=" bg-white rounded-lg shadow-xl overflow-hidden flex flex-col justify-center items-center text-success py-8">
                    <i class="far fa-calendar-check fa-4x"></i>
                    <p class="text-xl font-bold mb-2">Total Appointments</p>
                    <p class="text-2xl font-normal">5</p>
                </div>
                <div class=" bg-white rounded-lg shadow-xl overflow-hidden flex flex-col justify-center items-center text-success">


                    <button onclick="openModal('main-modal')" class='text-xl font-bold mb-2'>
                        <i class="far fa-calendar-check fa-4x "></i><br>
                        Specialist</button>
                    <!-- component -->
                    <!-- component -->
                    <style>
                        .animated {
                            -webkit-animation-duration: 1s;
                            animation-duration: 1s;
                            -webkit-animation-fill-mode: both;
                            animation-fill-mode: both;
                        }

                        .animated.faster {
                            -webkit-animation-duration: 500ms;
                            animation-duration: 500ms;
                        }

                        .fadeIn {
                            -webkit-animation-name: fadeIn;
                            animation-name: fadeIn;
                        }

                        .fadeOut {
                            -webkit-animation-name: fadeOut;
                            animation-name: fadeOut;
                        }

                        @keyframes fadeIn {
                            from {
                                opacity: 0;
                            }

                            to {
                                opacity: 1;
                            }
                        }

                        @keyframes fadeOut {
                            from {
                                opacity: 1;
                            }

                            to {
                                opacity: 0;
                            }
                        }
                    </style>



                    <div class="main-modal fixed w-full inset-0 z-50 overflow-hidden flex justify-center items-center animated fadeIn faster" style="background: rgba(0,0,0,.7);">
                        <div class="border border-blue-500 shadow-lg modal-container bg-white w-4/12 md:max-w-11/12 mx-auto rounded-xl shadow-lg z-50 overflow-y-auto">
                            <div class="modal-content py-4 text-left px-6">
                                <!--Title-->
                                <div class="flex justify-between items-center pb-3">
                                    <p class="text-2xl font-bold text-gray-500">Add Specialist</p>
                                    <div class="modal-close cursor-pointer z-50" onclick="modalClose('main-modal')">
                                        <svg class="fill-current text-gray-500" xmlns="http://www.w3.org/2000/svg" width="18" height="18"
                                             viewBox="0 0 18 18">
                                        <path
                                            d="M14.53 4.53l-1.06-1.06L9 7.94 4.53 3.47 3.47 4.53 7.94 9l-4.47 4.47 1.06 1.06L9 10.06l4.47 4.47 1.06-1.06L10.06 9z">
                                        </path>
                                        </svg>
                                    </div>
                                </div>
                                <!--Body-->
                                <div class="my-5 mr-5 ml-5 flex justify-center">
                                    <form action="../AddSpecialist" method="POST" id="add_caretaker_form"  class="w-full">
                                        <div class="">
                                            <div class="">
                                                <label for="names" class="text-md text-gray-600">Enter Specialist name</label>
                                            </div>
                                            <div class="">
                                                <input type="text" autocomplete="off" name="specName" class="h-3 p-6 w-full border-2 border-gray-300 mb-5 rounded-md">
                                            </div>

                                        </div>

                                        <div class="text-center">
                                            <button type="submit" class="
                                                    px-6 bg-black p-3 ml-3 rounded-lg text-white hover:bg-teal-400">Add</button>

                                        </div>

                                    </form>
                                </div>
                                <!--Footer-->

                            </div>
                        </div>
                    </div>


                    <script>
                        all_modals = ['main-modal']
                        all_modals.forEach((modal) => {
                            const modalSelected = document.querySelector('.' + modal);
                            modalSelected.classList.remove('fadeIn');
                            modalSelected.classList.add('fadeOut');
                            modalSelected.style.display = 'none';
                        })
                        const modalClose = (modal) => {
                            const modalToClose = document.querySelector('.' + modal);
                            modalToClose.classList.remove('fadeIn');
                            modalToClose.classList.add('fadeOut');
                            setTimeout(() => {
                                modalToClose.style.display = 'none';
                            }, 500);
                        }

                        const openModal = (modal) => {
                            const modalToOpen = document.querySelector('.' + modal);
                            modalToOpen.classList.remove('fadeOut');
                            modalToOpen.classList.add('fadeIn');
                            modalToOpen.style.display = 'flex';
                        }

                    </script>
                    <p class="text-2xl font-normal">5</p>

                </div>
            </div>

        </section>
    </body>
</html>