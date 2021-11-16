<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>LoganFerrera</title>
    <meta name="description" content="" />

    <spring:url value="/resources/gradients.css" var="gradientsCss" />
    <spring:url value="/resources/styles.css" var="stylesCss" />
    <spring:url value="/resources/set-background.js" var="setBackgroundJs" />
    <spring:url value="/resources/tweet.svg" var="tweetSvg" />

    <link href="${stylesCss}" rel="stylesheet">
    <link href="${gradientsCss}" rel="stylesheet">
  </head>
  <body class="">
    

      <header>
        <nav class="website-nav">
          <ul>
            <li><a class="home-link" href="http://loganferrera.com/Caesar">Caesar</a></li>
            <li><a href="http://loganferrera.com/Alexander">Alexander</a></li>
            <li><a href="http://loganferrera.com/TiberiusGracchus">Tiberius Gracchus</a></li>
            <li><a href="http://loganferrera.com/CatoTheYounger">Cato</a></li>
          </ul>
        </nav>
      </header>

      <div class="message">
        <!-- Not using twitter link but want to keep this for future functionality
          <a class="twitter-link" href="https://twitter.com/">
              <img src="${tweetSvg}" alt="Tweet"/>
          </a> -->
        <div class="text">
          <h1>The Great Men</h1>
          <h2>"So Shines a Good Deed in a Weary World"</h2>
        </div>
      </div>
    </div>

    <footer>
      <p class="footer-contents">Designed and developed by Logan Ferrera</p>
    </footer>

    <script src={$setBackgroundJs}"></script>
  </body>
</html>