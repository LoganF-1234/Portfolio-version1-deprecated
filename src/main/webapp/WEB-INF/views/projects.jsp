<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>LoganFerrera</title>
    <meta name="description" content="" />

    <spring:url value="/resources/projects.css" var="stylesCss" />
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
            <li><a class="home-link" href="/">Home</a></li>
            <li><a href="/greatmen">The Great Men</a></li>
            <li><a href="/greatwomen">The Great Women</a></li>
          </ul>
        </nav>
      </header>

      <div id="c">
		<div class="center">
			<section>
			 <div class="row">
			 	<div class="section1">
			 	  <h1>My Projects</h1>
			 	</div>
			 </div>
			</section>
			<section>
			 <div class="row">
			  	<div class ="capsule container">
			  	  <a class="shopping-link" href="/shopping-cart">
			  		<img src="/resources/shoppingcart.png" alt="Shopping" style="width:100%" class="hover-opacity">
			  		<div class="container container-grey">
			  			<p>
			  				<b>Shopping Cart</b>
			  			</p>
			  			<p>
							<b>Fully functional shopping cart Java application using a PostgreSQL database.</b>			  			
			  			</p>
			  		</div>
			  	  </a>
			  	</div>
			  
			  
			 </div>
			 
			 </section>
			 
			 <section>
			 	<div class="row"> 
			 	  
			 	
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
