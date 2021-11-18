<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>LoganFerrera</title>
    <meta name="description" content="" />

    <spring:url value="/resources/gradients.css" var="gradientsCss" />
    <spring:url value="/resources/home.css" var="stylesCss" />
    <spring:url value="/resources/set-background.js" var="setBackgroundJs" />
    <spring:url value="/resources/tweet.svg" var="tweetSvg" />

    <link href="${stylesCss}" rel="stylesheet">
    <link href="${gradientsCss}" rel="stylesheet">
  </head>
 
  <body>
	  <div id="b" class="pad-top-h pad-bot-f">
	   
	   <div id="h">
         <div class="container">
      	<a class="home-name" href="/">
      		loganferrera.com
      	</a>
        <nav class="website-nav">
          <ul class="pull-right">
            <li><a class="home-link" href="http://loganferrera.com/portfolio">Portfolio</a></li>
            <li><a href="http://loganferrera.com/greatmen">The Great Men</a></li>
            <li><a href="http://loganferrera.com/greatwomen">The Great Women</a></li>
            <li><a href="http://loganferrera.com/misc">Misc</a></li>
          </ul>
        </nav>         
      </div>
     
      </div> 
      <div id="c">
		<div class="center">
			<section>
			 <div class="row">
			 	<div class="section1">
			 	  <h1>Welcome to my portfolio!</h1>
			 	  <h2>Have a look around!</h2>
			 	</div>
			 	<div class="section2">
			 	  <h1>Logan Ferrera</h1>
			 	</div>
			 </div>
			</section>
			<section>
			 <div class="row">
			  <div class="graphics1">
			    <svg version="1.1" id="Layer_1" xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="1 -10 20 10" enable-background="new 1 -10 20 10" xml:space="preserve">
			      <g class="spin">
			         <path class="path" fill="none" stroke="#FFFFFF" stroke-width="1" stroke-miterlimit="10" d="M 8.587 3.927 C 4.878 4.034 4.352 2.468 3.671 1.902 A 1 1 0 0 0 2.327 3.902 A 1 1 0 0 0 3.886 2.97 A 1 1 0 0 0 3.241 2.253 A 1 1 0 0 0 2.489 2.45 A 1 1 0 0 0 2.309 3.132 A 1 1 0 0 0 2.614 3.49 A 1 1 0 0 0 3.044 3.615 A 1 1 0 0 0 3.42 3.436 M 8.588 3.927 C 9.5353 3.9117 10.4827 3.8963 11.534 3.94 C 14.317 4.098 14.747 2.557 15.41 1.984 C 15.965 1.5 16.718 1.894 16.879 2.288 C 17.291 2.915 17.004 3.524 16.807 3.775 C 16.413 4.384 15.249 4.098 15.177 3.524 C 14.891 2.969 15.356 2.288 15.822 2.288 C 16.467 2.199 16.897 2.647 16.646 3.274 C 16.431 3.954 15.607 3.811 15.553 3.256">
			      </g>
			    </svg>
			      
			    <div class="section3">
			 	  <h1>The Great Men</h1>
			 	</div>
			 </div>
			   <div class="graphics2">
			 	<div class="section4">
			 	  <h1>The Great Women</h1>
			 	</div>
			   </div>
			 </div>
		</div>      
      </div>
      <div id="f">
      <p class="f-contents">Designed and developed by Logan Ferrera</p>
    </div>
         
    </div>
	   

    <script src={$setBackgroundJs}"></script>
  </body>
</html>