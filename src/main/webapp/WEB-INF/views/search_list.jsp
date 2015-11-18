<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Results</title>
</head>
<body>
			<table>
				<tr>
					<td>ID</td>
					<td>Name</td>
					<td>Age</td>
					<td>Is Admin</td>
					<td>Created Date</td>
					<td>Edit</td>
					<td>Delete</td>
				</tr>
				
				<c:forEach items="${result}" var="user">
					<tr>
						<td><c:out value="${user.id}" /></td>
						<td><c:out value="${user.name}" /></td>
						<td><c:out value="${user.age}" /></td>
						<td><c:out value="${user.isAdmin}" /></td>
						<td><c:out value="${user.createdDate}" /></td>
						<td><a href="edit?id=${user.id}">Edit</a></td>
						<td><a href="delete?id=${user.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</table>			

</body>
</html>