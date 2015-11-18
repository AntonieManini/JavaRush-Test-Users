<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Create User</title>
</head>

<body>

	<form:form id="RegisterForm" modelAttribute="user" method="post" action="register">
		<table>
			<tr>
				<td><form:label path="name">Name</form:label></td>
				<td><form:input required="true" pattern="[0-9A-Za-zÀ-ßà-ÿ\s]{1,25}" maxlength="25" autofocus="true" path="name" /></td>
			</tr>
			<tr>
				<td><form:label path="age">Age</form:label></td>
				<td><form:input pattern="\d{0,2}" type="number" min="18" max="99" path="age" /></td>
			</tr>
			<tr>
				<td><form:checkbox path="isAdmin" value="false" label="is Admin" /></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<input type="submit" value="Create" />
				</td>
			</tr>
		</table>
	</form:form>

</body>
</html>