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
	<h1>User Details</h1>
	<table>
		<tr>
			<td><h2>${username}</h2></td>
		</tr>
	</table>
<div align="center">
		<h4>Modify your details according to your wish</h4>
		<form:form action="deposit" method="post" modelAttribute="deposit">
			<table>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="deposit" /></td>

				</tr>
			</table>

		</form:form>
		<form:form action="update" method="post" modelAttribute="update">
			<table>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="update" /></td>

				</tr>
			</table>

		</form:form>
		
		
		<form:form action="withdraw" method="post" modelAttribute="withdraw">
			<table>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="withdraw" /></td>

				</tr>
			</table>

		</form:form>
		<form:form action="delete" method="post" modelAttribute="delete">
			<table>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="delete" /></td>

				</tr>
			</table>

		</form:form>
		<form:form action="logout" method="post" modelAttribute="logout">
			<table>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="logout" /></td>

				</tr>
			</table>

		</form:form>
		


	</div>

</body>
</html>