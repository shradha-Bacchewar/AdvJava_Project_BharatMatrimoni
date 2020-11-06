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
<title>Registration Form</title>
</head>
<body>
	<spr:form action="reg.htm" method="post" commandName="user" >
	
	<div class="container-fluid">
	
        <!--navbar-->
        <div class="row bg-dark align-items-center" style="height: 10vh;">
            <div class="col-9 text-light pl-5"
                style="font-size: 30px;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;font-weight: bolder;">
                 Sign Up For Bharat Matrimoni...
            </div>        
    	</div>
                   <div class="row justify-content-center" style="height: 90vh;background-image: url(red.jpg);
                       background-repeat: no-repeat; background-size: cover;">
            <div class="col-6  d-flex justify-content-center align-items-center">
                <div class="row justify-content-center" style="height:50vh;background-color:white;border-top-left-radius: 20px;border-bottom-right-radius: 20px;">
                    <div class="col-12 ">

                        <div class="row" style="height:10vh;border-top-left-radius: 20px;border-style: outset;">
                            <div class="col-12" style="color:black; font-weight: bolder;font-size: 30px;">Sign Up</div>
                        </div>

                        <div class="row p-2" style="height:40vh;border-bottom-right-radius: 20px;border-style: outset;">
                             <div class="col-12">
	
	
	<table align="center" >
		<tr>
			<td>
				User Name :
			</td>
			<td>
				<spr:input path="userName"/>
			</td>
		</tr>
		<tr>
			<td>
				Password :
			</td>
			<td>
				<spr:password path="userPass"/>
			</td>
		</tr>
		<tr>
			<td>
				MobileNo :
			</td>
			<td>
				<spr:input path="mobNum"/>
			</td>
		</tr>
		<tr>
			<td>
				Gender:
			</td>
			<td>
				<spr:input path="gender"/>


			</td>
		</tr>

		<tr>
			<td>
				EmailId :
			</td>
			<td>
				<spr:input path="emailId"/>
			</td>
		</tr>
		
		
		<tr>
			<td>
				<a href="index.jsp" >Back</a>
			</td>
			<td>
				<input type="submit"  value="Register" >
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
</body>
</html>
                            
                
