<%@page import="com.cdac.dto.Profile"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>Updation</title>
</head>
<body>
<div class="container-fluid">
	
        <!--navbar-->
        <div class="row bg-dark align-items-center" style="height: 10vh;">
            <div class="col-9 text-light pl-5"
                style="font-size: 30px;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;font-weight: bolder;">
                 Visit Here to see all Profiles...
            </div>        
    	</div>
                   <div class="row justify-content-center" style="height: 90vh;background-image: url(matrimony.jpg);
                       background-repeat: no-repeat; background-size: cover;">
            <div class="col-6  d-flex justify-content-center align-items-center">
                <div class="row justify-content-center" style="height:60vh;background-color:white;border-top-left-radius: 20px;border-bottom-right-radius: 20px;">
                    <div class="col-12 ">

                        <div class="row" style="height:10vh;border-top-left-radius: 20px;border-style: outset;">
                            <div class="col-12" style="color:black; font-weight: bolder;font-size: 30px;">See All Profiles...</div>
                        </div>

                        <div class="row p-2" style="height:50vh;border-bottom-right-radius: 20px;border-style: outset;">
                             <div class="col-12">
	
	
	
	
	
	<table align="center" >
	<thead>
                        <tr align="center">
                            <th scope="col">Date of birth</th>
                            <th scope="col">City</th>
                            <th scope="col">Education</th>
                            <th scope="col">Income</th>
                             <th scope="col">Cast</th>
                              <th scope="col">Blood Group</th>
                               <th scope="col">Height</th>
                            <th scope="col">Delete</th>
                             <th scope="col">Update</th>
                        </tr>
                    </thead>
                    <tbody>
		<% 
		List<Profile> elist = (List<Profile>)request.getAttribute("plist");
		for(Profile prf : elist){
		%>
		<tr>
			 <td align="center">

		<%=prf.getDateOfBirth()%>
			</td>
			
			 <td align="center">

				<%=prf.getCity()%>
			</td>
			 <td align="center">

				<%=prf.getEducation()%>
			</td>
		 <td align="center">

				<%=prf.getIncome()%>
			</td>
		 <td align="center">

				<%=prf.getCast()%>
			</td>
		 <td align="center">

				<%=prf.getBloodgrp()%>
			</td>
			 <td align="center">

				<%=prf.getHeight()%>
			</td>
			 <td align="center">
				<button class="btn btn-warning">
				<a href="profile_delete.htm?profileId=<%=prf.getProfileID()%>">Delete</a>
				</button>
			</td>
			<td align="center">
			<button class="btn btn-warning">
			
		<a href="profile_update_form.htm?profileId=<%=prf.getProfileID()%>">Update</a>
		</button>
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
		</tbody>
	</table>
	 </div>
           </div>

                    </div>
                </div>
            </div>
        </div>
                      
	</div>
</body>
</html>