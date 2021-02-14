<%@page import="com.dao.Blog"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dao.Blog" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="updatedatas">
<input type="text" name="text11">
<input type="submit" name="submitkaro">

</form>

<% String heading=(String)request.getAttribute("head");
String paragraph=(String)request.getAttribute("paragraph");
String image=(String) request.getAttribute("image");
Integer id=(Integer) request.getAttribute("id");
%>

<form style="margin-top:30px;" action="updateeverything" method="post">
    <input type="text" name="ids" value="<%= id %>">
 <input type="text" name="updateheading" value="<%= heading %>">
 <textarea rows="18" cols="18" name="updatetextarea" "><%= paragraph %>></textarea>>

<button type="submit">Submit</button>
</form>
</body>
</html>