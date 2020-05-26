<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td><h1>provide the credentials correctly</h1></td>
		</tr>
	</table>
	<form:form action="tryonce" method="post" >
		<table>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="tryonce" /></td>

			</tr>
		</table>

	</form:form>

</body>
</html>