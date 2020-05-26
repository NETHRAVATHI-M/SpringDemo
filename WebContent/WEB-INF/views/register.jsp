
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register page</title>
<style type="text/css">
.error{
color:red;}
</style>
</head>
<body>
	
	<div align="center">
		<h1>Welcome to registration Page</h1>
		<form:form action="save" method="post" modelAttribute="employee">
			<table>
				<tr>
					<td>userId</td>
					<td><form:input path="UserId" /></td>
					<td><form:errors path="UserId" cssClass="error"/></td>
				</tr>

				<tr>
					<td>password</td>
					<td><form:input path="password" /></td>
					<td><form:errors path="password" cssClass="error"/></td>
				</tr>
				<tr>
					<td>Username</td>
					<td><form:input path="Username" /></td>
					<td><form:errors path="Username" cssClass="error"/></td>
				</tr>

				<tr>
					<td>email</td>
					<td><form:input path="email" /></td>
					<td><form:errors path="email" cssClass="error"/></td>
				</tr>

				<tr>
					<td>adress</td>
					<td><form:input path="address" /></td>
					<td><form:errors path="address" cssClass="error"/></td>
				</tr>

				<tr>
					<td>phone</td>
					<td><form:input path="phone" /></td>
					<td><form:errors path="phone" cssClass="error" /></td>
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