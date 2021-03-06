<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>	

<html>


<head>
	<title>Hello World</title>
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link type="text/css" rel="stylesheet" href="css/jquery-ui-1.10.3/smoothness/jquery-ui-1.10.3.custom.css">
	<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.10.3.custom.js"></script>
	<script type="text/javascript" src="js/script.js"></script>	
</head>


<body>
<form id="form" action="create.do">
	<input type="hidden" id="action" name="action"/>

	<div class="page">
		<div id="title" class="title"><h2>Hello World</h2></div>
		<div id="subtitle" class="subtitle"><h3>Page: <b>Create</b></h3></div>
		<div class="content">
			<div class="contentElement">
				<div class="text">Name * <c:if test="${not empty requestScope.errorMessages}"><span id="name.errors" class="error">${requestScope.errorMessages.name}</span></c:if> </div>
				<div class="input"><input type="text" id="name" name="name" /></div>
				<div class="description">Type your name here</div>
			</div>
			
		</div>
		<div class="buttons">
			<input type="button" id="create" name="create" value="Create" onclick="send('Create');" title="Create user"/>
			<input type="button" id="back" name="back" value="Back" onclick="send('Back');" title="Go back to list of users"/>
		</div>
	</div>		

</form>
</body>


</html>