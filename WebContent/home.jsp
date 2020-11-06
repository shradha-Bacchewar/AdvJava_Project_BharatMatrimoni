<%@page import="com.cdac.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@include file="cache_control.jsp" %>
  
  <%
	User user = (User)session.getAttribute("user");
	String userName = "", profilePic = "";
	if(user!=null){
		userName = user.getUserName();
		profilePic = user.getProfilePic();
	}
%>    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title> Welcome To Bharat Matrimony</title>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-danger navbar-dark fixed-top ">
	
	   
    
     <div class="col-10 text-light d-flex justify-content-center align-items-center " ; 
                 style="font-size: 40px;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;font-weight: bolder;">
                 Bharat Matrimony....!
     </div>
       <div class="collapse navbar-collapse" id="collapsibleNavbar" style="font-weight: bolder; font-size: 35pxpx;">
    <ul class="navbar-nav">
    <li class="nav-item">
        <a class="nav-link" href="prof_delete_form.html">Delete Account</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="index.html">Logout</a>
      </li>
    </ul>
  
  
 </div>
</nav>
<div class="row bg-light d-flex flex-row justify-content-center align-items-center "
            style="height:95vh;background-image:url(b.jpg);background-repeat: no-repeat;background-size: cover;">
  <div>
	<table align="center" >
	<tr>
		<td>
		<img alt="NO PIC...! pic" src="<%="images/"+profilePic%>" height="250" width="250" > 
		&nbsp;&nbsp;
		</td></tr>
		
		<tr>
			<td><font color="purple" font size="7"> WELCOME.... <%=(session.getAttribute("user")!=null) ? ((User)session.getAttribute("user")).getUserName() : "!!!!!!!!" %> </font></td>
	
			 </td>
		</tr>
		<tr>
			<td> <a href="prep_profile_add_form.htm" ><li><font color="red" font size="5">FILL THE PROFILE FORM</font></li></a> </td>
		</tr>
		<tr>
			<td> <a href="profile_list.htm" ><li><font color="red" font size="5">PROFILES</font></li></a> </td>
		</tr>
		<tr>
			<td> <a href="choices.html" ><li><font color="red" font size="5">Search Choices for You</font></li></a> </td>
		</tr>
		<tr>
			<td> <a href="file_upload_form.html" ><li><font color="red" font size="5">File Upload</font></li></a> </td>
		</tr>
	</table>
	
</body>
</html>