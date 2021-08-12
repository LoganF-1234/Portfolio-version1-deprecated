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
    <div class="wrapper">
      <div class="graphics">
        <div class="tower">
          <svg version="1.1" id="Layer_1" xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="-11 170 1000 429" enable-background="new -11 170 1000 429" xml:space="preserve">
            <path class="path" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-miterlimit="10" d="M 1040.616 578.244 H 799.411 V 524.255 H 835.225 V 510.961 H 799.543 V 486.175 H 785.935 V 511.186 H 751.686 V 523.776 H 785.71 V 577.883 H 622 v -54.31 H 652.932 V 511.044 H 622.032 V 486.1 H 608.969 V 511.13 H 578.998 l 0.031 12.935 H 609.997 v 54.165 l -464.178 -1.279 L 269 319 L 291.001 327.021 L 290.434 328.235 L 322.534 340.312 L 322.959 339.313 C 315.705 336.408 320.001 331.201 325.182 333.638 C 325.837 333.616 325.797 332.532 325.819 332.228 C 325.642 332.076 327.292 330.333 324.037 330.354 C 323.401 330.418 322.533 330.439 322.207 329.984 C 322.159 328.033 317.494 327.013 316.322 328.033 C 311.511 328.99 305.4 327.412 301.877 323.362 C 302.976 322.718 301.561 321.202 300.095 321.96 L 285.545 316.706 C 281.04 315.726 272.641 312.566 271.232 312.15 L 272.508 308.907 L 269.256 306.922 C 271.059 297.903 294.298 241.923 295.961 241.424 C 295.961 242.338 307.325 246.625 307.049 244.433 C 318.96 225.128 310.413 214.029 308.144 212.943 C 309.787 207.329 300.203 201.305 296.37 208.835 C 291.03 207.877 277.202 211.437 273.096 232.112 C 272.822 234.303 278.709 236.082 283.228 237.315 C 283.404 238.264 257.411 290.302 251.429 299.267 L 247.604 298.519 L 245.774 303.508 C 240.515 302.22 226.1353 296.8287 215.794 293.239 C 215.448 291.276 212.706 291.584 212.662 292.963 C 208.836 294.211 200.354 292.464 196.41 288.018 C 195.981 286.101 190.828 284.506 190.092 285.979 C 189.512 286.162 188.732 285.936 188.087 285.574 C 185.772 284.928 186.661 287.013 186.469 287.137 C 186.208 287.327 186.09 287.391 185.978 287.931 C 191.963 288.048 189.855 293.372 185.962 291.677 L 185.72 292.162 L 219.421 303.13 L 219.904 302.407 L 242.277 310.575 l -112.7 266.228 h -21.122 H -104.755"/>
            <path class="path" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-miterlimit="10" d="M8,393.7c0-13.5,12.1-10.8,15.6-14.7 c2.8-3.2-1-8.8,9-13.9c7.9-4.1,9.7,1,13.1,0.8c4.5-0.3,3.3-6.7,14.7-6.6c12.7,0.2,11.2,8.4,14.7,10.6c3,1.9,7.9-2.1,13.9,4.1 c3.8,4,1.3,7.4,2.5,9.8c2.2,4.4,14.7,0.9,14.7,13.9c0,12.2-13.5,8.3-17.2,10.6c-3.6,2.3-4.4,9.3-13.1,11.5c-8,2-9.5-4-13.9-4.1 c-5-0.1-5.5,8.6-18.8,6.6c-12.3-1.9-12.3-9.1-16.4-12.3C21.9,406.3,8,408.6,8,393.7z"/>
            <path class="path" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-miterlimit="10" d="M325.1,313.9c-3.9,3-3.9,10-15.7,11.8 c-12.8,2-13.3-6.4-18-6.3c-4.3,0.1-5.7,5.8-13.3,3.9c-8.4-2.1-9.1-8.8-12.5-11c-3.6-2.3-16.5,1.5-16.5-10.2c0-12.4,12-9.1,14.1-13.3 c1.1-2.3-1.3-5.6,2.4-9.4c5.8-6,10.4-2.1,13.3-3.9c3.4-2.1,2-10,14.1-10.2c11-0.2,9.9,6,14.1,6.3c3.3,0.2,5-4.7,12.5-0.8 c9.6,4.9,6,10.3,8.6,13.3c3.3,3.7,14.9,1.2,14.9,14.1C343.1,312.5,329.8,310.3,325.1,313.9z"/>
            <path class="path" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-miterlimit="10" d="M18.4,229.5c0-13.5,12.1-10.8,15.6-14.7 c2.8-3.2-1-8.8,9-13.9c7.9-4.1,9.7,1,13.1,0.8c4.5-0.3,3.3-6.7,14.7-6.6c12.7,0.2,11.2,8.4,14.7,10.6c3,1.9,7.9-2.1,13.9,4.1 c3.8,4,1.3,7.4,2.5,9.8c2.2,4.4,14.7,0.9,14.7,13.9c0,12.2-13.5,8.3-17.2,10.6c-3.6,2.3-4.4,9.3-13.1,11.5c-8,2-9.5-4-13.9-4.1 c-5-0.1-5.5,8.6-18.8,6.6c-12.3-1.9-12.3-9.1-16.4-12.3C32.2,242.1,18.4,244.4,18.4,229.5z"/>
            <path class="path" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-miterlimit="10" d="M215.8,398.8c0-13.5,12.1-10.8,15.6-14.7 c2.8-3.2-1-8.8,9-13.9c7.9-4.1,9.7,1,13.1,0.8c4.5-0.3,3.3-6.7,14.7-6.6c12.7,0.2,11.2,8.4,14.7,10.6c3,1.9,7.9-2.1,13.9,4.1 c3.8,4,1.3,7.4,2.5,9.8c2.2,4.4,14.7,0.9,14.7,13.9c0,12.2-13.5,8.3-17.2,10.6c-3.6,2.3-4.4,9.3-13.1,11.5c-8,2-9.5-4-13.9-4.1 c-5-0.1-5.5,8.6-18.8,6.6c-12.3-1.9-12.3-9.1-16.4-12.3C229.7,411.3,215.8,413.6,215.8,398.8z"/>
          </svg>
        </div>
      </div>

      <header>
        <nav class="website-nav">
          <ul>
            <li><a class="home-link" href="https://penelope.uchicago.edu/Thayer/E/Roman/Texts/Plutarch/Lives/Caesar*.html">Caesar</a></li>
            <li><a href="https://penelope.uchicago.edu/Thayer/E/Roman/Texts/Plutarch/Lives/Alexander*/home.html">Alexander</a></li>
            <li><a href="https://penelope.uchicago.edu/Thayer/e/roman/texts/plutarch/lives/tiberius_gracchus*.html">Tiberius Gracchus</a></li>
            <li><a href="https://penelope.uchicago.edu/Thayer/E/Roman/Texts/Plutarch/Lives/Cato_Minor*.html">Cato</a></li>
          </ul>
        </nav>
      </header>

      <div class="message">
          <a class="twitter-link" href="https://twitter.com/home/?status=I%20created%20a%20project%20with%20AWS%20CodeStar!%20%23AWS%20%23AWSCodeStar%20https%3A%2F%2Faws.amazon.com%2Fcodestar">
              <img src="${tweetSvg}" alt="Tweet"/>
          </a>
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
