
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
</head>
<body>

	<div align="center">
		<h1>provide the Login details of User you want to delete</h1>
		<form:form action="deleteProcess" method="post"
			modelAttribute="deleteProcess">
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
					<td colspan="2" align="center"><input type="submit"
						value="deleteProcess" /></td>

				</tr>
			</table>

		</form:form>
		
		<form:form action="back" method="post">
			<tr>
				<td>Already have account? click here to
						login</td><td colspan="2" align="center"><input type="submit"
						value="back" /></td>
						
			</tr>
			

		</form:form>
		

	</div>

</body>
</html>