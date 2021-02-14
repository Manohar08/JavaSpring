<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List,com.dao.Blog,com.dao.GetdataId" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script data-ad-client="ca-pub-6620884901323523" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>




<meta charset="ISO-8859-1">
<title>Learn techs.in</title>
</head>
<style>

	

.footerss{
 	background-color:#808080;
 	text-align: center;
 	margin-bottom: 0;
 	height: 70px;
 	size: 30px;
 }




</style>
<body>

  <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    
  </head>
  <body>

  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Navbar</a> 
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">Technology</a>
      </li>
     <l1 class="nav-item active">
     <a class="nav-link" href="hindinews.jsp" >Hindi_News</a>
     </l1>
      <li class="nav-item">
        <a class="nav-link active" href="aboutus">About Us</a>
      </li>
     
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
    
    	<div class="mx-2">
         <button class="btn btn-danger">Login</button>
         </div>
         <div >
    	  <a  href="contactus">ContactUs</a>
    	  </div>
    	
    
  </div>
</nav>





 















 	  
<% List<Blog>l1=GetdataId.firstpagedata(0,20); 
  
%>

<% int i=1; %>

<div class="row"> 
 <% request.setAttribute("title", "readm"); %>
<% 	  	  
 	  for(Blog b:l1){
 		  
 		  int id=b.getBlog_id();
 		 
	 String name=b.getBlog_Heading();
	   String  image=b.getBlog_image();
	 String para=b.getBlog_paragraph();
	 String readm= GetdataId.ReadMore(para);
%>


	  <div class="col-sm-6">  
<div class="card" style="  margin-top: 20px;">
  <!-- <img class="card-img-top" src="abc.jpg" 
  style="height: 194px" alt="Card image cap"> -->
  <div class="card-body">
  <h2><%= name %>  </h2>
  
 		<img class="card-img-top" src="resources/images/<%= image %>" width="500" height="300" />
 		
 		<p><%=readm %></p>
 		<br>
 
 		  <a href="finalda.jsp?blogid=<%=id  %>& ?titleofpages=<%= name %>" class="btn btn-primary">Read Full News</a>  
  </div>

</div>  
</div>

 	 	
 		<%
 		 
 		
}
%>

 </div> 

 <nav aria-label="Page navigation example" style="margin-top:20px; margin-left:20px;">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="">Previous</a></li>
    <li class="page-item"><a class="page-link" href="">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>

 	
  <div class="footerss text-danger">
<footer class="text-danger">
<p> @Copyright2020  </p>

  		<p  style="text-align: right; "
  		name="a1"
 class="text-light" 
  		> Manohar Kashyap</p>

</footer>
</div>



</body>
</html>