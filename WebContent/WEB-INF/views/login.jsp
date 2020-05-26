
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
		<form:form action="LoginProcess" method="post">
			<table>
				<tr>
					<td>userId</td>
					<td><input type="text" name="userId" id="userId" /></td>
				</tr>

				<tr>
					<td>password</td>
					<td><input type="password" name="password" id="password"  /></td>
				</tr>




				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Login" /></td>

				</tr>
			</table>

		</form:form>

	</div>

</body>
</html>