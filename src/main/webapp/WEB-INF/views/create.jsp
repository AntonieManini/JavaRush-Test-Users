<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTf-8">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>	

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>

	<title>Create User</title>
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
					<li class="active"><a href="create">Create User</a></li>
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
						<form:form id="RegisterForm" modelAttribute="user" method="post" action="register">
							<table class="table">
								<tr>
									<td><form:label path="name">Name</form:label></td>
									<td><form:input required="true" pattern="[0-9A-Za-zа-яА-Я\s]{1,25}" maxlength="25" autofocus="true" path="name" /></td>
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
					</div>
				</div>
			</div>
		</div>
	</div>							

</body>
</html>