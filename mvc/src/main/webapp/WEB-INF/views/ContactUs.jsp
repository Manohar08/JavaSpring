<%@page import="com.dao.GetdataId"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dao.User_Information,com.dao.GetdataId" %>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>CONTACT US</title>
    <style >
    	.body{
    		background-color: #F8F8FF;
    	}
    </style>
  </head>
  <body class="body">
  	<h1 style="text-align: center; margin-top: 20px;">CONTACT US </h1>
  	<div class="container" style="margin-top: 58px;">
   <form name="myform" onsubmit="return validateform()">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" name="emails" aria-describedby="emailHelp" placeholder="Enter email">
    
  </div>
  <div class="form-group">
  	<label >Enter your Name</label><br>
    <input type="text" name="name" placeholder="enter your name" class="form-control" > 
  </div>
 <div class="form-group">
 	<label for="exampleFormControlTextarea1">Write down to Us</label>

 	    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="textarea"></textarea>
 </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
 <%User_Information user=new User_Information();  %>
<script >
function validateform(){
	var emailadd=document.myform.emails.value;
	var name=document.myform.name.value;
	var textarea=document.myform.textarea.value;
	
	
	if(emailadd=="" || emailadd==null){
		alert("email is empty fill it");
	
		return false;
	}
	else if(name=="" || name==null){
		alert("name cannot be empty");
		return false;
	}
	else if(textarea==""){
		alert("Please write something to us");
		return false;
	}
	else {
		alert("you can successfullty  share your thoughts with us");
		return true;
	}
	
}

</script>
<form onsubmit="validateform()">
<%   user.setUser_email(request.getParameter("emails"));
		user.setUser_name(request.getParameter("name"));
		user.setUser_textarea(request.getParameter("textarea"));
		GetdataId.User_info(user);
		
%>

</form>


</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>