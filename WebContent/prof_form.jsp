<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>Profile Form</title>
</head>
<body>
	<spr:form action="profile_add.htm" method="post" commandName="profile" >
	<div class="container-fluid">
	
        <!--navbar-->
        <div class="row bg-dark align-items-center" style="height: 10vh;">
            <div class="col-9 text-light pl-5"
                style="font-size: 30px;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;font-weight: bolder;">
                 Create Profile For Bharat Matrimony...
            </div>        
    	</div>
                   <div class="row justify-content-center" style="height: 70vh;background-image: url(matrimony.jpg);
                       background-repeat: no-repeat; background-size: cover;">
            <div class="col-6  d-flex justify-content-center align-items-center">
                <div class="row justify-content-center" style="height:60vh;background-color:white;border-top-left-radius: 20px;border-bottom-right-radius: 20px;">
                    <div class="col-12 ">

                        <div class="row" style="height:10vh;border-top-left-radius: 20px;border-style: outset;">
                            <div class="col-12" style="color:black; font-weight: bolder;font-size: 30px;">Fill Your Profiles...</div>
                        </div>

                        <div class="row p-2" style="height:50vh;border-bottom-right-radius: 20px;border-style: outset;">
                             <div class="col-12">
	
	
	
	<table align="center" >
	<tr>
	<spr:hidden path="userId" />
			<td>
				DATE OF BIRTH
			</td>
			<td>
				<spr:input path="DateOfBirth"/>
			</td>
		</tr>
		<tr>
			<td>
				City
			</td>
			<td>
				<spr:input path="city"/>
			</td>
		</tr>
		<tr>
			<td>
				EDUCATION:
			</td>
			
			<td>
				<spr:input path="education"/>
			</td>
		</tr>
		<tr>
			<td>
				INCOME:
			</td>
			
			<td>
				<spr:input path="income"/>
			</td>
		</tr>
		<tr>
			<td>
				CAST:
			</td>
			
			<td>
				<spr:input path="cast"/>
			</td>
		</tr>
		<tr>
			<td>
				BLOOD GROUP:
			</td>
			
			<td>
				<spr:input path="bloodgrp"/>
			</td>
		</tr>
		<tr>
			<td>
				height:
			</td>
			
			<td>
				<spr:input path="height"/>
			</td>
		</tr>
		<tr>
			<td>
				<a href="home.jsp" >Back</a>
			</td>
			<td>
				<input type="submit"  value="Add" >
			</td>
		</tr>
		</table>
		 </div>
           </div>

                    </div>
                </div>
            </div>
        </div>
                      
	</div>
	</spr:form>
	<div class="row bg-dark d-flex flex-row justify-content-center align-items-center " style="height:17vh;">
            <div class="col-8 text-light d-flex flex-column justify-content-center align-items-center ">
                <div class="row">Project Done By</div>
                <div class="row">Shradhha Bachhewar(200240520090)</div>
                <div class="row">Shravani Kulkarni(200240520091)</div>
            </div>

        </div>
	
</body>
</html>