<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div>

<h2> LogIn</h2>
	<form action="Login">
		<table>
			<tr>
				<td> Email - </td>
				<td> <input type="text" name="email"> </td>
			</tr>
			
			<tr>
				<td> Password - </td>
				<td> <input type="password" name="pass"> </td>
			</tr>
						
		</table>
		
		<input type="submit" value="LogIn">
		
	</form>
	<p><a href="ForgetPassword.jsp"> Forget Password ? </a></p>
</div>
</body>
</html>