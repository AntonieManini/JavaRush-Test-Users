<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>	

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	
	<title>All Users</title>
</head>

<body>
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">			 	
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mynavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>

			<div class="collapse navbar-collapse" id="mynavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="list">Home</a></li>
					<li><a href="create">Create User</a></li>
					<li><a href="search">Search User</a></li>					
				</ul>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="jumbotron">
					<div class="text-center">	
						<h3>User Manager - CRUD Application</h3></br>
						<table class="table">
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Age</th>
								<th>isAdmin</th>
								<th>Created Date</th>
								<th>Edit</th>
								<th>Delete</th>
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
					</div>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-4 col-md-offset-4">
					<div class="text-center">
						<nav>
						  <ul class="pager">
							<c:choose>
								<c:when test="${page == pages}">
									<li><a href="list?page=${page-1}">Previous</a></li>
								</c:when>
								<c:when test="${page == 1}">
									<li><a href="list?page=${page+1}">Next</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="list?page=${page-1}">Prev. page</a></li>
									<li>${page}</li>
									<li><a href="list?page=${page+1}">Next page</a></li>
								</c:otherwise>
							</c:choose>			
						  </ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>