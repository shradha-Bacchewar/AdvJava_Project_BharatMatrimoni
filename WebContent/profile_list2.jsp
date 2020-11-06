<%@page import="com.cdac.dto.Profile"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
</head>
<body>

	
	<table align="center" >
		<% 
		List<Profile> elist = (List<Profile>)request.getAttribute("clist");
		for(Profile prf : elist){
		%>
		<tr>
			<td>
				<%=prf.getDateOfBirth()%>
			</td>
			
			<td>
				<%=prf.getCity()%>
			</td>
			<td>
				<%=prf.getEducation()%>
			</td>
			<td>
				<%=prf.getIncome()%>
			</td>
			<td>
				<%=prf.getCast()%>
			</td>
			<td>
				<%=prf.getBloodgrp()%>
			</td>
			<td>
				<%=prf.getHeight()%>
			</td>
			
		</tr>
		<% } %>
		<tr>
			<td>
				<a href="home.jsp" >Back</a>
			</td>
			<td>
				
			</td>
		</tr>
	</table>
	
</body>
</html>