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
<title>Login Form</title>
</head>

<body>


	<spr:form action="login.htm" method="post" commandName="user" >
	
<div class="container-fluid">
        <!--navbar-->
        <div class="row bg-dark align-items-center" style="height: 10vh;">
            <div class="col-9 text-light pl-5"
                style="font-size: 30px;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;font-weight: bolder;">
               Log In Here... </div>        
    	</div>
   
        <div class="row justify-content-center" style="height:90vh;background-image: url(dest7.jpg);
                    background-repeat: no-repeat; background-size: cover;">
           
            <div class="col-6 d-flex justify-content-center  align-items-center">
                
                <div class="row justify-content-center" style="height:50vh;background-color:rgb(161, 152, 152, 0.7) ;border-top-left-radius: 20px;border-bottom-right-radius: 20px;">
                   
                    <div class="col-12 ">
                    
                        <div class="row " style="height:10vh;border-top-left-radius: 20px;border-style: outset;">
                            <div class="col-6" style="color:tomato;font-weight:bold;font-size: 35px;">Log In</div>
                        </div>
                   <div class="row  p-5" style="height:40vh;border-bottom-right-radius: 20px;border-style: outset;">
                       
                        <div class="col-12" >	
	
	<table align="center" >
		<tr>
			<td style="color:black" > 
			    User Name :
			</td>
			<td>
				<spr:input path="userName"/>
		        <font color="red" ><spr:errors path="userName"></spr:errors></font>
			</td>
		</tr>
		
		<tr>
			<td style="color:black">
				Password :
			</td>
			<td>
				<spr:password path="userPass"/>
			    <font color="red" ><spr:errors path="userPass"></spr:errors></font>
				
			</td>
	    <tr>
			<td>
				<input type="submit"  value="Login" >
			</td>
		</tr>
	
		<tr>
		
		    <td>
				<button style="background-color: rgb(174, 238, 56) ;"><a href="index.jsp" >Back</a></button>
			</td>
			<td>
				<button style="background-color:  rgb(174, 238, 56);"><a href="forgot_password.html" >Forgot Password?</a></button>
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
			
                   
                  
               
  
