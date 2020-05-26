
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register page</title>
</head>
<body>
	
	<div align="center">
		<h1>Welcome to registration Page</h1>
		<form:form action="save" method="post" modelAttribute="employee">
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
						value="save" /></td>

				</tr>
			</table>

		</form:form>
		<form:form action="login" method="post" modelAttribute="user">
			<tr>
				<td>Already have account? click here to
						login</td><td colspan="2" align="center"><input type="submit"
						value="login" /></td>
						
			</tr>
			

		</form:form>

	</div>

</body>
</html>