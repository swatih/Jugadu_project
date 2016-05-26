<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<c:url value="resources/bootstrap" var="b1"/>
<c:url value="resources/images" var="i1"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Old laptops sale & Services</title>
<link href="${b1}/css/bootstrap.min.css" rel="stylesheet"/>
<script type="text/javascript" src="${b1}/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${b1}/js/bootstrap.min.js"></script>


<style>
.navbar {
    background-color: #000000;
    border-color: #E7E7E7;
}

.navbar .nav > li > a {
    color: #FFFFFF;
     line-height: 50px;
}

.navbar .nav > .active > a, .navbar nav > .active > a:hover, .navbar .nav > .active > a:focus {
    background-color: #555555;
    color: yellow;
}


</style>

</head>
<body>
<pre>



</pre>
<div style="padding:top=80px"></div>
<div class="container">
<div class="navbar-wrapper">

<div class="example3">
  <nav class="navbar navbar-inverse navbar-fixed-top">

    
           
       
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar3">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#"><img      
           src="${i1}/logo1.jpg" height=170% width=80%></a>
        
      </div> 
      <div id="navbar3" class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-right">
          <li class="active"><a href="#">Home</a></li>
          <li><a href="about">About</a></li>
          <li><a href="contact">Contact</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Products <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
              <li><a href="laptops">Home Use Laptops</a></li>
              <li><a href="laptops">Developer Laptops</a></li>
              <li><a href="laptops">Gammers Laptops</a></li>
			  
             <!--  <li class="divider"></li>
              <li class="dropdown-header">Nav header</li>
              <li><a href="#">Separated link</a></li>
              <li><a href="#">One more separated link</a></li> -->
            </ul>
          </li>
         <li><a href="persons"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
           <li><a href="products"> Admin</a></li>
        </ul>
      </div>
      <!--/.nav-collapse -->
   
   
    <!--/.container-fluid -->
  </nav>
</div>
</div>
</div>