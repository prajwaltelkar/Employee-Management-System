<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
if(session.getAttribute("role")==null)
{}
else if(session.getAttribute("role").equals("admin"))
{
	String destination = "/WEB-INF/adminHome.jsp";
	RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
	rd.forward(request, response);
}
else if(session.getAttribute("role").equals("user"))
{
	String destination = "/WEB-INF/employeeHome.jsp";
	RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
	rd.forward(request, response);
}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Employee Management System</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link href="styles.css" rel="stylesheet" type="text/css">
	</head>
	<body >
		<div class="container">
			<h2 style="text-align:center;margin-top:10px;color:#210b63;font-family:sans-serif">Employee Management System</h2>
			<%@include file="login.jsp" %>
		</div>
	</body>
</html>