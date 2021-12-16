<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>LoganFerrera</title>
    <meta name="description" content="" />

    <spring:url value="/resources/shoppingcart.css" var="stylesCss" />
    <spring:url value="/resources/drawing.svg" var="drawingSVG" />
    <spring:url value="/resources/fix.svg" var="womenSVG" />

    <link href="${stylesCss}" rel="stylesheet">
    <link href="${gradientsCss}" rel="stylesheet">
  </head>
  <body class="">
    <div class="wrapper">
      <div class="graphics">
        <div class="tower">
          
          </div>
      </div>

      <header>
        <nav class="website-nav">
          <ul>
            <li><a class="home-link" href="/projects">Back</a></li>
          </ul>
        </nav>
      </header>

      <div id="c">
		<div class="center">
			<section>
			 <div class="row">
			 	<div class="section1">
			 	  <h1>Shopping Cart</h1>
			 	  <h2>Welcome to the first project I developed as a university student!</h2>
			 	</div>
			 </div>
			</section>
			<section>
			 <div class="row">
			  <div class= "section2">
			   <img src="/resources/login.png" alt="Shopping" style="width:100%" class="">
			   
			  </div>
			 <div class="section3">
				<p>The first thing the user is presented with upon opening this application. This would also be the first page designed and the first page
					responsible for reigniting my love for application development. A lot of passion went into the creation of this program and it provided a great
					collaborative experience with some of my fellow classmates. I will attempt to give a concise summary of all the inner-workings of this application, all
					the way down to the database level. </p> 	
			  </div>
			 </div>
			 
			 <div class="row">
			 	<h2>Goal</h2>
			 </div>
			 
			 <div class="row">
			 	<p>The goal of this project was to develop comprehension of SQL databases, how they can be incorporated into applications, and learn techniques 
			 	to increase functionality and improve user experience.<p>
			 </div>
			 
			 <div class="row">
			 	<p>Before developing the program, a few assumptions were made as to what functionality that the user may want included in it. Some of these ideas were: 
			 	(1) ability to choose between customer, employee, and manager account types, (2) save users shopping cart even on logout, (3) reset users shopping cart on checkout,
			 	and (4) ability for employees to add, remove, edit items from the inventory. <p>
			 </div>
			 
			 </section>
			 
			 <section>
			   <div class="row"> 
			 	  <h2>The Database</h2>
			   </div>
			   
			   <div class="row"> 
			 	  <h2>I decided to use PostgreSQL to create a server on my local machine to hold the databases needed in this program. Although this would mean that
			 	  all the testing would need to be done from one machine, the efficiency of this method allowed me to quickly import my databases into my code
			 	  and quickly see any changes that would be made to them. What was also preferred fromt his method was the stripped back automation, so that I could
			 	  better understand how to navigate the SQL shell manually and learn more about SQL commands in the process.</h2>
			   </div>
			   
			   <div class="row"> 
			 	  <div class= "section3">
			   		<p> </p> 
			  </div>
			 <div class="section2">
					<img src="/resources/items.png" alt="Shopping" style="width:100%" class="">	
					<p>Table for items</p>
			  </div>
			   </div>
			   
			 </section>
		</div>      
      </div>
    </div>

    <footer>
      <p class="footer-contents">Designed and developed by Logan Ferrera</p>
    </footer>

  </body>
</html>
