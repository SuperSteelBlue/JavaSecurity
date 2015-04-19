<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/styles.css" />" >
	<title>Access Control - Spring Security</title>
</head>
<body>
	<h1>Contacts for user <sec:authentication property="principal.Username" /></h1>

	<ul>
	<c:forEach var="contact" items="${contacts}">
		<li><c:out value="${contact.firstname}"/> <c:out value="${contact.lastname}"/></li>
	</c:forEach>
	</ul>
</body>
</html>
