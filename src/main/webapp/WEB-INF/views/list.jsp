<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>All Users</title>
</head>

<body>

	<table>
		<tr>
		<th align = "center">Id</th>
		<th align = "center">Name</th>
		<th align = "center">Age</th>
		<th align = "center">isAdmin</th>
		<th align = "center">Created Date</th>
		<th align = "center">Edit</th>
		<th align = "center">Delete</th>
		</tr>
		
		<c:choose>
			<c:when test="${!empty userList}">
				<c:forEach items="${userList}" var="user">
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
			</c:when>
			<c:otherwise>
				<tr>
					<td colspan="4">No users found</td>
				</tr>
			</c:otherwise>
		</c:choose>		
	</table>


	<c:choose>
		<c:when test="${page == pages}">
			<a href="list?page=${page-1}"/>Prev. page</a>
			<p>${page}</p>
		</c:when>
		<c:when test="${page == 1}">
			<p>${page}</p>
			<a href="list?page=${page+1}">Next page</a>		
		</c:when>
		<c:otherwise>
			<a href="list?page=${page-1}"/>'">Prev. page</a>
			<p>${page}</p>
			<a href="list?page=${page+1}">Next page</a>		
		</c:otherwise>
	</c:choose>

</body>
</html>