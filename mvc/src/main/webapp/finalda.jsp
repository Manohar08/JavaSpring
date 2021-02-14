<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dao.GetdataId,com.dao.Blog" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

  <style >
    	.body{
    		background-color: #FFE4C4;
    	}
    	 .footerss{
 	background-color:#808080;
 	text-align: center;
 	margin-bottom: 0; 
 	height: 70px;
 	size: 30px;
 }
 .blogdata{
 width:75%;
 }

    	
    </style>
<meta charset="ISO-8859-1">

  <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">



  
 

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  



</head>
<body >
<nav class="navbar navbar-expand-lg navbar-light bg-light">

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link " href="hindinews.jsp">Hindi_News</a>
      </li>
           <li class="nav-item active">
        <a class="nav-link active" href="aboutus">About Us</a>
      </li>
      
      
      
    </ul>
  <!--  <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0 disabled" type="submit">Search</button>
    </form> -->
   <div class="mx-2">
         <button class="btn btn-danger">Login</button>
         </div>
         <div >
    	  <a  href="contactus">ContactUs</a>
    	  </div>
  </div>
</nav>







 <% 
String   titles=(String)request.getAttribute("title");

%>
    <title><%= titles %></title>





















<%int id=Integer.parseInt(request.getParameter("blogid")); %>
<% Blog blog= GetdataId.givedata(id);
    String image=blog.getBlog_image();
    //out.println(image);
    String Heading=blog.getBlog_Heading();
    String paragraph=blog.getBlog_paragraph();
%>

<div class="blogdata">
<h1 style="margin-left:38px; text-align: center;"><%= Heading %>  </h1>
<div class="container style=" "">
<img alt="na ho payi" src="resources/images/<%=image %>   " width="250" height="200" style="margin-top:50px;" >
</div>
<p style="margin-top:50px; margin-left:38px;"><%= paragraph %> </p>


</div>


<div class="footerss text-danger">
	<footer class="text-danger" style="margin-top: 310px;">
  		<p> @Copyright2020  </p>

  		<p  style="text-align: right; "
  		name="a1"
 class="text-light" 
  		> Manohar Kashyap</p>
  	</footer>
</div>


 <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  




</body>
</html>