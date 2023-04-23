<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.Connection" %>
	<%@page import="com.db.DbConnect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to My Hospital</title>
<%@ include file="components/AllCss.jsp"%>

</head>
<body>
	<%@ include file="components/Navbar.jsp"%>
	<!-- courousel -->

	
	
	
	
	<div id="carouselExampleCaptions" class="relative"
		data-te-carousel-init data-te-carousel-slide>
		<div
			class="absolute right-0 bottom-0 left-0 z-[2] mx-[15%] mb-4 flex list-none justify-center p-0"
			data-te-carousel-indicators>
			<button type="button" data-te-target="#carouselExampleCaptions"
				data-te-slide-to="0" data-te-carousel-active
				class="mx-[3px] box-content h-[3px] w-[30px] flex-initial cursor-pointer border-0 border-y-[10px] border-solid border-transparent bg-white bg-clip-padding p-0 -indent-[999px] opacity-50 transition-opacity duration-[600ms] ease-[cubic-bezier(0.25,0.1,0.25,1.0)] motion-reduce:transition-none"
				aria-current="true" aria-label="Slide 1"></button>
			<button type="button" data-te-target="#carouselExampleCaptions"
				data-te-slide-to="1"
				class="mx-[3px] box-content h-[3px] w-[30px] flex-initial cursor-pointer border-0 border-y-[10px] border-solid border-transparent bg-white bg-clip-padding p-0 -indent-[999px] opacity-50 transition-opacity duration-[600ms] ease-[cubic-bezier(0.25,0.1,0.25,1.0)] motion-reduce:transition-none"
				aria-label="Slide 2"></button>
			<button type="button" data-te-target="#carouselExampleCaptions"
				data-te-slide-to="2"
				class="mx-[3px] box-content h-[3px] w-[30px] flex-initial cursor-pointer border-0 border-y-[10px] border-solid border-transparent bg-white bg-clip-padding p-0 -indent-[999px] opacity-50 transition-opacity duration-[600ms] ease-[cubic-bezier(0.25,0.1,0.25,1.0)] motion-reduce:transition-none"
				aria-label="Slide 3"></button>
		</div>
		<div
			class="relative w-full h-[32rem] overflow-hidden">
			<div
				class="relative float-left -mr-[100%] w-full h-full transition-transform duration-[600ms] ease-in-out motion-reduce:transition-none"
				data-te-carousel-active data-te-carousel-item
				style="backface-visibility: hidden">
				<img src="./img/1.jpg"
					class="block w-full h-[100%]" alt="..." />
				<div
					class="absolute inset-x-[15%] bottom-5 hidden py-5 text-center text-white md:block">
					<h5 class="text-xl">First slide label</h5>
					<p>Some representative placeholder content for the first slide.
					</p>
				</div>
			</div>
			<div
				class="relative float-left -mr-[100%] hidden w-full h-full transition-transform duration-[600ms] ease-in-out motion-reduce:transition-none"
				data-te-carousel-item style="backface-visibility: hidden">
				<img src="./img/2.jpg"
					class="block w-full" alt="..." />
				<div
					class="absolute inset-x-[15%] bottom-5 hidden py-5 text-center text-white md:block">
					<h5 class="text-xl">Second slide label</h5>
					<p>Some representative placeholder content for the second
						slide.</p>
				</div>
			</div>
			<div
				class="relative float-left -mr-[100%] hidden w-full h-full transition-transform duration-[600ms] ease-in-out motion-reduce:transition-none"
				data-te-carousel-item style="backface-visibility: hidden">
				<img src="https://tecdn.b-cdn.net/img/Photos/Slides/img%20(23).jpg"
					class="block w-full h-[100%] overflow-hidden" alt="..." />
				<div
					class="absolute inset-x-[15%] bottom-5 hidden py-5 text-center text-white md:block">
					<h5 class="text-xl">Third slide label</h5>
					<p>Some representative placeholder content for the third slide.
					</p>
				</div>
			</div>
		</div>
		<button
			class="absolute top-0 bottom-0 left-0 z-[1] flex w-[15%] items-center justify-center border-0 bg-none p-0 text-center text-white opacity-50 transition-opacity duration-150 ease-[cubic-bezier(0.25,0.1,0.25,1.0)] hover:text-white hover:no-underline hover:opacity-90 hover:outline-none focus:text-white focus:no-underline focus:opacity-90 focus:outline-none motion-reduce:transition-none"
			type="button" data-te-target="#carouselExampleCaptions"
			data-te-slide="prev">
			<span class="inline-block h-8 w-8"> <svg
					xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
					stroke-width="1.5" stroke="currentColor" class="h-6 w-6">
        <path stroke-linecap="round" stroke-linejoin="round"
						d="M15.75 19.5L8.25 12l7.5-7.5" />
      </svg>
			</span> <span
				class="!absolute !-m-px !h-px !w-px !overflow-hidden !whitespace-nowrap !border-0 !p-0 ![clip:rect(0,0,0,0)]">Previous</span>
		</button>
		<button
			class="absolute top-0 bottom-0 right-0 z-[1] flex w-[15%] items-center justify-center border-0 bg-none p-0 text-center text-white opacity-50 transition-opacity duration-150 ease-[cubic-bezier(0.25,0.1,0.25,1.0)] hover:text-white hover:no-underline hover:opacity-90 hover:outline-none focus:text-white focus:no-underline focus:opacity-90 focus:outline-none motion-reduce:transition-none"
			type="button" data-te-target="#carouselExampleCaptions"
			data-te-slide="next">
			<span class="inline-block h-8 w-8"> <svg
					xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
					stroke-width="1.5" stroke="currentColor" class="h-6 w-6">
        <path stroke-linecap="round" stroke-linejoin="round"
						d="M8.25 4.5l7.5 7.5-7.5 7.5" />
      </svg>
			</span> <span
				class="!absolute !-m-px !h-px !w-px !overflow-hidden !whitespace-nowrap !border-0 !p-0 ![clip:rect(0,0,0,0)]">Next</span>
		</button>
	</div>

	<!-- key features -->
	<section class="features">
	
	
      <div class="container mx-auto">
        <div class="">
          <h1 class="text-center text-2xl font-semibold pt-3 text-slate-500">
            Key Features of our Hospital
          </h1>
        </div>
        <div class="flex flex-row space-x-3 pt-10">
          <div class="w-1/3">
            <div class="relative flex flex-col min-w-0 break-words bg-white w-full mb-8 shadow-lg rounded-lg">
              <div class="px-4 py-5 flex-auto">
                <div class="text-white p-3 text-center inline-flex items-center justify-center w-12 h-12 mb-5 shadow-lg rounded-full bg-red-400">
                  <i class="fas fa-award"></i>
                </div>
                <h6 class="text-xl font-semibold">Awarded Agency</h6>
                <p class="mt-2 mb-4 text-blueGray-500">
                  Divide details about your product or agency work into parts.
                  A paragraph describing a feature will be enough.
                </p>
              </div>
            </div>
            <div class="relative flex flex-col min-w-0 break-words bg-white w-full mb-8 shadow-lg rounded-lg">
              <div class="px-4 py-5 flex-auto">
                <div class="text-white p-3 text-center inline-flex items-center justify-center w-12 h-12 mb-5 shadow-lg rounded-full bg-red-400">
                  <i class="fas fa-award"></i>
                </div>
                <h6 class="text-xl font-semibold">Awarded Agency</h6>
                <p class="mt-2 mb-4 text-blueGray-500">
                  Divide details about your product or agency work into parts.
                  A paragraph describing a feature will be enough.
                </p>
              </div>
            </div>
          </div>
          <div class="w-1/3">
            <div class="relative flex flex-col min-w-0 break-words bg-white w-full mb-8 shadow-lg rounded-lg">
              <div class="px-4 py-5 flex-auto">
                <div class="text-white p-3 text-center inline-flex items-center justify-center w-12 h-12 mb-5 shadow-lg rounded-full bg-red-400">
                  <i class="fas fa-award"></i>
                </div>
                <h6 class="text-xl font-semibold">Awarded Agency</h6>
                <p class="mt-2 mb-4 text-blueGray-500">
                  Divide details about your product or agency work into parts.
                  A paragraph describing a feature will be enough.
                </p>
              </div>
            </div>
            <div class="relative flex flex-col min-w-0 break-words bg-white w-full mb-8 shadow-lg rounded-lg">
              <div class="px-4 py-5 flex-auto">
                <div class="text-white p-3 text-center inline-flex items-center justify-center w-12 h-12 mb-5 shadow-lg rounded-full bg-red-400">
                  <i class="fas fa-award"></i>
                </div>
                <h6 class="text-xl font-semibold">Awarded Agency</h6>
                <p class="mt-2 mb-4 text-blueGray-500">
                  Divide details about your product or agency work into parts.
                  A paragraph describing a feature will be enough.
                </p>
              </div>
            </div>
          </div>

          <div class="w-1/3">
              <img src="./img/3.jpg" alt="" class="h-[30rem] w-full">
          </div>
        </div>
      </div>

    </section>


	<!-- team -->
	 <div class="">
          <h1 class="text-center text-2xl font-semibold pt-3 text-slate-500">Our Team</h1>
        </div>
	<!-- component -->
<section class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-4 py-12">
    <div class="text-center pb-12">
        <h2 class="text-base font-bold text-indigo-600">
            We have the best equipment
        </h2>
        <h1 class="font-bold text-3xl md:text-4xl lg:text-5xl font-heading text-gray-900">
            Check our awesome team members
        </h1>
    </div>
    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-3 gap-6">
        <div class="w-full bg-white rounded-lg p-12 flex flex-col justify-center items-center">
            <div class="mb-8">
                <img class="object-center object-cover rounded-full h-36 w-36" src="https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80" alt="photo">
            </div>
            <div class="text-center">
                <p class="text-xl text-gray-700 font-bold mb-2">Dany Bailey</p>
                <p class="text-base text-gray-400 font-normal">Doctor</p>
            </div>
        </div>
        <div class="w-full bg-white rounded-lg p-12 flex flex-col justify-center items-center">
            <div class="mb-8">
                <img class="object-center object-cover rounded-full h-36 w-36" src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80" alt="photo">
            </div>
            <div class="text-center">
                <p class="text-xl text-gray-700 font-bold mb-2">Lucy Carter</p>
                <p class="text-base text-gray-400 font-normal">Doctor</p>
            </div>
        </div>
        <div class="w-full bg-white rounded-lg p-12 flex flex-col justify-center items-center">
            <div class="mb-8">
                <img class="object-center object-cover rounded-full h-36 w-36" src="https://images.unsplash.com/photo-1499952127939-9bbf5af6c51c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1176&q=80" alt="photo">
            </div>
            <div class="text-center">
                <p class="text-xl text-gray-700 font-bold mb-2">Jade Bradley</p>
                <p class="text-base text-gray-400 font-normal">Doctor</p>
            </div>
        </div>
        <div class="w-full bg-white rounded-lg p-12 flex flex-col justify-center items-center">
            <div class="mb-8">
                <img class="object-center object-cover rounded-full h-36 w-36" src="https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80" alt="photo">
            </div>
            <div class="text-center">
                <p class="text-xl text-gray-700 font-bold mb-2">Dany Bailey</p>
                <p class="text-base text-gray-400 font-normal">Doctor</p>
            </div>
        </div>
        <div class="w-full bg-white rounded-lg p-12 flex flex-col justify-center items-center">
            <div class="mb-8">
                <img class="object-center object-cover rounded-full h-36 w-36" src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80" alt="photo">
            </div>
            <div class="text-center">
                <p class="text-xl text-gray-700 font-bold mb-2">Lucy Carter</p>
                <p class="text-base text-gray-400 font-normal">Doctor</p>
            </div>
        </div>
        <div class="w-full bg-white rounded-lg p-12 flex flex-col justify-center items-center">
            <div class="mb-8">
                <img class="object-center object-cover rounded-full h-36 w-36" src="https://images.unsplash.com/photo-1499952127939-9bbf5af6c51c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1176&q=80" alt="photo">
            </div>
            <div class="text-center">
                <p class="text-xl text-gray-700 font-bold mb-2">Jade Bradley</p>
                <p class="text-base text-gray-400 font-normal">Doctor</p>
            </div>
        </div>
    </div>
</section>

</body>
</html>