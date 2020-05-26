<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>${username}</td>
		</tr>

		<form:form action="login" method="post" modelAttribute="user">
			<tr>
				<td>click here to login</td>
				<td colspan="2" align="center"><input type="submit"
					value="login" /></td>
			</tr>
			<tr></tr>
			
          </form:form>
          <form:form action="home" method="post" modelAttribute="home">
			<tr>
				<td>click here to logout</td>
				<td colspan="2" align="center"><input type="submit"
					value="home" /></td>
			</tr>
			<tr></tr>
          </form:form>
	</table>
</body>
</html>