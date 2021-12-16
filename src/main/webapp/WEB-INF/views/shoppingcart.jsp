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
    <spring:url value="/resources/GitHub-Mark-Light-120px-plus.png" var="gitPic" />
    

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
			 	  <p>I decided to use PostgreSQL to create a server on my local machine to hold the databases needed in this program. Although this would mean that
			 	  all the testing would need to be done from one machine, the efficiency of this method allowed me to quickly import my databases into my code
			 	  and quickly see any changes that would be made to them. What was also preferred fromt his method was the stripped back automation, so that I could
			 	  better understand how to navigate the SQL shell manually and learn more about SQL commands in the process.</p>
			   </div>
			   
			   <div class="row"> 
			 	  <div class= "section2 low">
			   		 <img src="/resources/cart.png" alt="Shopping" style="width:100%" class="">	
			   		 <p class="meta">Table for user carts</p>
			  </div>
			 <div class="section2 low">
					<img src="/resources/items.png" alt="Shopping" style="width:100%" class="">	
					<p class="meta">Table for items</p>
			  </div>
			  
			   <div class="section2 low">
					<img src="/resources/users.png" alt="Shopping" style="width:100%" class="">	
					<p class="meta">Table for users</p>
			  </div>
			  
			 <div class="section3 small"> 
			 	  <p>These are the tables used for this program. More details about their implementation will follow.</p>
			   </div>
			   </div>
			   
			 </section>
			 <section>
			   <div class="row"> 
			 	  <h2>The Program</h2>
			   </div>
			    
			   <div class="row"> 
			 	  <div class= "section2">
			   		<img src="/resources/createaccount.png" alt="Shopping" style="width:100%" class="">
			  	  </div>
			 	  <div class="section3">
					<p>This is the create account page. Here the user can decide whether they want to be a customer, employee, or manager; each position
						having it's own unique access to the tools within the program. After the summary of the program, we will look back at our databases to see
						if there is any new additions.</p> 	
			  	  </div>
			   </div>
			   
			   <div class="row">  
			 	  <div class="section3">
					<p>Upon creating a customer account, the user is taken to this page. Here they can look through the stores inventory in the drop down menu.
						The user can type in how much of each item they would like, but cannot buy more of the item than is present in the store's inventory. This
						page will dynamically update whenever there is a change to the database.</p> 	
			  	  </div>
			  	   <div class= "section2">
			   		<img src="/resources/customershopping.png" alt="Shopping" style="width:100%" class="">
			  	  </div>
			 	</div>
			 	
			 	<div class="row"> 
			 	  <div class= "section2">
			   		<img src="/resources/createaccount.png" alt="Shopping" style="width:100%" class="">
			  	  </div>
			 	  <div class="section3">
					<p>This is the create account page. Here the user can decide whether they want to be a customer, employee, or manager; each position
						having it's own unique access to the tools within the program. After the summary of the program, we will look back at our databases to see
						if there is any new additions. Upon checking out, the database will update again and subtract the items in the user's cart from the inventory.</p> 	
			  	  </div>
			   </div>
			   
			    <div class="row"> 
			 	  <p>That will do for a brief summary of the customer section of the program. Now we will look at how it reacts when a manager signs in.</p>
			   </div>
			   
			 </section>
			 
			 <section>
			   <div class="row"> 
			 	  <h2>The Manager</h2>
			   </div>
			    
			   <div class="row">  
			 	  <div class="section3">
					<p>The user has signed in as the dictator4lyfe account, who has the attribute of manager. After signing in they are taken to this page.
						As a manager, the user has multiple new options for editing the database from inside the program. A manager can also use their account to
						buy items just as a customer would. Let's look at some of the new sections of this program accessable by our manager.</p> 	
			  	  </div>
			  	   <div class= "section2">
			   		<img src="/resources/shoppingmanager.png" alt="Shopping" style="width:100%" class="">
			  	  </div>
			 	</div>
			 	
			 	<div class="row"> 
			 	  <div class= "section2">
			   		<img src="/resources/additem.png" alt="Shopping" style="width:100%" class="">
			  	  </div>
			 	  <div class="section3">
					<p>Here we are inside the add item page. From here any manager can add a new item to the inventory, along with the type, price, amount, and a brief
						description. After adding the item, the information will be pulled from the program and sent into the items table in our database, adding the item
						for all users.</p> 	
			  	  </div>
			   </div>
			   
			 	<div class="row">  
			 	  <div class="section3">
					<p>And just like that we have our new item that anyone may add to their cart!</p> 	
			  	  </div>
			  	   <div class= "section2">
			   		<img src="/resources/internadd.png" alt="Shopping" style="width:100%" class="">
			  	  </div>
			 	</div>
			   
			    <div class="row"> 
			 	  <p>Now that we have touched on some of the features of this program, let's look at our databases again to see if there is any changes.</p>
			   </div>
			   
			 </section>
			 
			  <section>
			   <div class="row"> 
			 	  <h2>The Database: After</h2>
			   </div>
			   
			   <div class="row"> 
			 	  <p></p>
			   </div>
			   
			   <div class="row"> 
			 	  <div class= "section2 low">
			   		 <img src="/resources/cartafter.png" alt="Shopping" style="width:100%" class="">	
			   		 <p class="meta">Table for user carts</p>
			  </div>
			 <div class="section2 low">
					<img src="/resources/itemsafter.png" alt="Shopping" style="width:100%" class="">	
					<p class="meta">Table for items</p>
			  </div>
			  
			    <div class="section3 small"> 
			 	  <p>Our tables have updated succesfully!</p>
			   </div>
			   
			   <div class="section2 low">
					<img src="/resources/usersafter.png" alt="Shopping" style="width:100%" class="">	
					<p class="meta">Table for users</p>
			  </div>
			  
			   </div>
			   
			 </section>
			 
			  <section>
			   <div class="row"> 
			 	  <h2>GitHub</h2>
			   </div>
			   
			    <div class="row"> 
			 	  <p>Thank you for looking through this program! A GitHub link will be provided below. The DatabaseConnection class contains most of the methods
			 	  	used in making this program operate, so I suggest taking a look at that to see the technical proficiency of this program!</p>
			   </div>
			   <div class="row"> 
			 	  <a class="git-link" href="https://github.com/LoganF-1234/shoppingcart">
              		<img src="${gitPic}" alt="GitHub"/>
          		  </a>
			   </div>
			   
			   
			  </section>
			 
		</div>      
      </div>
    </div>

    <footer>
      <p class="footer-contents"></p>
    </footer>

  </body>
</html>
