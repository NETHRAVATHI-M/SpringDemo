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
			<td>${hello}</td>
		</tr>
	</table>
<form:form action="DepositSuccess" method="post" >
		<table>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="back" /></td>

			</tr>
		</table>

	</form:form>
</body>
</html>