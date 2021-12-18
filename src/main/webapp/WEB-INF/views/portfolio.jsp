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
			 	  <h1>Portfolio Website</h1>
			 	  <h2>An insight into this websites development</h2>
			 	</div>
			 </div>
			</section>
			<section>
			 <div class="row">
			   <div class="section3">
				<p>The home screen of this website!</p>			  	
			  	
			   </div>
			  <div class= "section2">
			   <img src="/resources/homescreen.png" alt="Shopping" style="width:100%" class="">	
			  </div>
			 </div>
			 
			 </section>
			 
			 <section>
			 	<div class="row">
			 	  <h2>Goal</h2>
			    </div>
			 
				<div class="row">
				 <p>The main purpose of this website was to demonstrate a foundational but functional knowledge of Amazon Web Services. Unfortunately, the costs of some
				 	AWS services caused me to greatly relegate the complexity of the environment, which will be discussed later.<p>
				</div>
				 
				<div class="row">
				 <p>Determing the function of the website would be another obstacle to cross before I began developing it. Early on I decided that I wanted to implement
				 	one of my hobbies into the design, so I decided to make a biographical site of some of my favorite historical figures and write up passages about 
				 	their achievements. With how much fun I had doing this, I decided to convert this website into an entire portfolio!  <p>
				</div>
				 
			   </div>
			 </section>
			  <section>
			   <div class="row"> 
			 	  <h2>The Environment</h2>
			   </div>
			   
			   <div class="row"> 
			 	  <p>Over the summer of my first year at Arizona State University, I made the decision to teach myself Amazon Web Services after seeing the direction our industry
			 	  	was headed in. I soon recieved my AWS Solutions Architect - Associate Certification and began to work on this website using some of the knowledge 
			 	  	that I learned. Unfortunately, many of the services I wanted to use to show off what I learned in my studies, I was unable to use because of the pricing
			 	  	which adds up quickly for such a small website. So, I had to manage with what my means were and came up with a more stripped-back and efficient solution!</p>
			   </div>
			   
			   <div class= "row">
			   	<div class= "section4">
			   		<img src="/resources/code build diagramo.drawio.png" alt="Shopping" style="width:100%" class="">	
			  	</div>
			  	<div class= "section4">
			   		<img src="/resources/environment-diagram.drawio.png" alt="Shopping" style="width:100%" class="">	
			  	</div>
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