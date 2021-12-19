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
				 <p>Determining the function of the website would be another obstacle to cross before I began developing it. Early on I decided that I wanted to implement
				 	one of my hobbies into the design, so I decided to make a biographical site of some of my favorite historical figures and write up passages about 
				 	their achievements. With how much fun I had doing this, I decided to convert this website into an entire portfolio!<p>
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
			   		<img src="/resources/code build diagramo.drawio.png" alt="CodeBuild Diagram" style="width:100%" class="">	
			  	</div>
			  	
			   <div class="row"> 
			 	  <p>Outlined above is the AWS solution for deploying new code into an environment. AWS offers a great automated soluti7on themselves for this called AWS Codestar
			 	  	which can be used to make anything from a serverless React web application to a Java Spring web application, the latter of which is what this website is. Using
			 	  	CodePipeline, CodeBuild, and CloudFormation stacks, I am able to automatically pull my code straight from GitHub everytime I commit new changes from my IDE.</p>
			    </div>
			   
			  	<div class= "section4">
			   		<img src="/resources/environment-diagram.drawio.png" alt="EnvironDiagram" style="width:45%" class="">	
			  	</div>
			  	
			  	<div class="row"> 
			 	  <p>Above is my ultra-simplistic networking solution. As discussed before, this solution was created with pricing being the most important factor to be taken
			 	  	into account, behind security. But seeing as Network ACL's and security groups do not cost anything extra, the only thing that suffered was the fail-safe
			 	  	features offered by AWS which I was not able to use in this design. So things such as load balancers needed to be cut out all together, leading me to choose
			 	  	Elastic Beanstalk's single instance option. That being said, my EC2 instances are still inside of an auto scaling group to ensure that the website is able to keep
			 	  	itself up in cases of the EC2 insance crashing.</p>
			    </div>
			   </div>
			   
			   
			 </section>
			 
			  <section>
			   <div class="row"> 
			 	  <h2>GitHub</h2>
			   </div>
			   
			    <div class="row"> 
			 	  <p>Thank you for looking through this website! I had agreat time developing it and will be updating it regularly! Please feel free to take a look at the GitHub repository
			 	  for this project!</p>
			   </div>
			   <div class="row"> 
			 	  <a class="git-link" href="https://github.com/LoganF-1234/shoppingcart-aws">
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