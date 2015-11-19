<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>	

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>	
	
	<title>Search Results</title>
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
					<li><a href="list">Home</a></li>
					<li><a href="create">Create User</a></li>
					<li class="active"><a href="search">Search User</a></li>					
				</ul>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="jumbotron">
					<div class="text-center">
						<table class="table">
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
					</div>
				</div>
			</div>
		</div>
	</div>							
						

</body>
</html>