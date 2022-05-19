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
			 	  <h1>Pathfinding Algorithms</h1>
			 	  <h2>A maze game using Breadth First Search and Depth First Search</h2>
			 	</div>
			 </div>
			</section>
			
			<section>
			   <div class= "row">
			   	<div class= "section4">
			   		<img src="/resources/algoProject.png" alt="algoProject" style="width:100%" class="">	
			  	</div>
			  	</div>
			 
			 </section>
			 
			 <section>
			 	<div class="row">
			 	  <h2>Goal</h2>
			    </div>
			 
				<div class="row">
				 <p>When I started developing this website, I only had a general knowledge of JavaScript. As a result, creating it was a grueling process that required a lot of giant blocks of code 
				 for SVG paths in the HTML and only basic interactivity. I knew that if I wanted to get anywhere with web development I had to learn JS and was super excited to take on the challenge.
				 I do not think I have had as much fun coding as I do now after teaching myself JavaScript and maniplating the DOM.<p>
				</div>
				 
				<div class="row">
				 <p>At the time of developing this application, I had just finished ASU's CSE310 Data Structures and Algorithms course. I fell in love with the algorithms I learned in the last half of that
				 class and wanted to make a maze game from the concepts. The grid game board which I would use in the game would be perfect for JavaScript's DOM manipulation capabilities and the 
				 code for BFS and DFS would be perfect for brushing up on scope and backend development in JavaScript.<p>
				</div>
				 
			 </section>
			 
			  <section>
			 	<div class="row">
			 	  <h1>Problems and Solutions</h1>
			    </div>
			 
				<div class="row">
				 <p>I ran into a few issues developing this game and would like to share my thought process of how to fix each and their solutions.<p>
				</div>
				 
				<div class="row">
				 <h2>Depth First Search Animation</h2>
				 <h3>Problem</h3>
				 <p>When running an asynchronous depth first search recursively, the await operator would destroy the stack of recursive calls.</p>
				 <h3>Solution</h3>
				 <p>While there is certainly a solution that would allow me to continue to use a recursive DFS function as well as some sort of Promise to animate the path asynchronously, I decided
				 it would be better to simply create an iterative DFS function instead. This way I could use await much like I did in the BFS async function. This solution seems a little too easy and I hope in
				 the future to more fully grasp the idea of Promises and specifically the await operator when used with recursion in JavaScript. Right now I have a good idea at the cause of the problem, but I
				 will need more practice with Promises to develop a solution.</p>
				</div>
				
				<div class="row">
				 <h2>Safari</h2>
				 <h3>Problem</h3>
				 <p>When running the application on the Safari browser on iPhone, the grid is disorganized and seems to be duplicated on top of itself.</p>
				 <h3>Solution</h3>
				 <p>The problem is that Safari simply does not support instrinsic grid sizing with the grid-template-rows or grid-template-columns properties. I am currently constructing a solution which will
				 just require finding a way to replicate the effect of grid-template-rows with another property of the CSS grid layout. I will update this page when I find a solution.</p>
				</div>
				 
			 </section>
			
			<section>
			   <div class="row"> 
			 	  <h2>GitHub</h2>
			   </div>
			   
			    <div class="row"> 
			 	  <p>Here is a link to the GitHub code for this project. The repository below has the code as I created it in VS Code with HTML. This website uses the Spring Framework so I had to convert
			 	  the HTML to JSP for the repository this website runs off of.</p>
			   </div>
			   <div class="row"> 
			 	  <a class="git-link" href="https://github.com/LoganF-1234/Pathfinding-Algorithms">
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