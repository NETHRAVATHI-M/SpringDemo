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
		<h1>Provide Employee Login credentials</h1>
		<form:form action="withdrawProcess" method="post"
			modelAttribute="withdrawProcess">
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
					<td>Enter the Amount To be deposited</td>
					<td><form:input path="balance" /></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="withdrawProcess" /></td>

				</tr>
			</table>

		</form:form>

	</div>

</body>
</html>