<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Updating the details</title>
</head>
<body>
	<h1>Provide your details to update your profile</h1>
	<div align="center">
		<h1>create Employeee</h1>
		<form:form action="UpdateProcess" method="post" modelAttribute="UpdateProcess">
			<table>
				<tr>
					<td>userId</td>
					<td><form:input path="UserId" /></td>
				</tr>

				<tr>
					<td>password</td>
					<td><form:input path="password" /></td>
				</tr>
				<tr>
					<td>Username</td>
					<td><form:input path="Username" /></td>
				</tr>

				<tr>
					<td>email</td>
					<td><form:input path="email" /></td>
				</tr>

				<tr>
					<td>adress</td>
					<td><form:input path="address" /></td>
				</tr>

				<tr>
					<td>phone</td>
					<td><form:input path="phone" /></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="UpdateProcess" /></td>

				</tr>
			</table>

		</form:form>
		<form:form action="redirectLogin" method="post" >
			<tr>
				<td> click here  to goback
						login</td><td colspan="2" align="center"><input type="submit"
						value="redirectLogin" /></td>
						
			</tr>
			

		</form:form>

	</div>

</body>
</html>