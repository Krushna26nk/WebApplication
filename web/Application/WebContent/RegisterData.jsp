<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="Style.css">
<title>Insert title here</title>

<script type="text/javascript">	

function onSubmit(){
	var userFName = document.MyForm.uname.value;
	
		if(userFName == ""){
			alert("Please Enter User Name");
		}
		if(!userFName.isNaN()){
			alert("Please enter correct User Name.");
		}
		
	var userLName = document.MyForm.lname.value;
		
		if(userLName == ""){
			alert("Please Enter Last Name");
		}
		if(!userLName.isNaN()){
			alert("Please enter correct Last Name.");
		}
		
	var userAddr = document.MyForm.address.value;
		if(userAddr == ""){
			alert("Please Enter Address");
		}
		
		
	var contct = document.MyForm.contact.value;
		if(contct == ""){
			alert("Please Enter Contact");
		}
		if(contct.isNaN()){
			alert("Please enter correct Contact.");
		}	
		
	var emailId = document.MyForm.email.value;
		if(emailId == ""){
			alert("Please Enter Email");
		}
		
	var userPass = document.MyForm.pass.value;	
		if(userPass == ""){
			alert("Please Enter Password.");
		}
	}
</script>


</head>
<body style="background-image:url("/WebContent/bootstrap/images/bg.jpg");">
<div class="regDiv">
	<h2> R E G I S T E R - H E R E </h2>
<div class="formDiv">
	<form class="form" name="MyForm" action="Registration" style="align:middle;">
				 <div class="inputFields">
					  
					  	<input type="text" class="input" id="firstName" placeholder="Name" name="uname" required> 
					  
				 	  	<input type="text" class="input" id="lastName" placeholder="Last Name" name="lname" required> 
				  	  
				  	   	<input type="text" class="input" id="userAddress" placeholder="Address" name="address" required> 
				  	  
				  		<input type="number" class="input" id="contactNo" placeholder="Contact" name="contact" required> 
				  	  
				  		<input type="email" class="input" id="emailId" placeholder="Email" name="email" required> 
				  	  
				  		<input type="password" class="input" id="userPassword" placeholder="Password" name="pass" required> 
			
		
		 				<input onClick="onSubmit()" type="submit" class="input" value="S U B M I T"> 
		 </div>
	</form>
	<div class="alreadyDiv">
		<p class="para"> Already Register..?  </p>			
		<button class="button" type="button"><a href="Login.jsp"> Log In </a></button>	
	</div>	
</div>
		
</div>
	




</body>
</html>