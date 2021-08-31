<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>
		<c:out value="${exception.getMessage() }"></c:out>
		<br>
		${exception.getMessage() }
		<ul>
			<c:forEach items="${exception.getStackTrace() }" var="stack">
				<li><c:out value="${stack }"></c:out></li>
			</c:forEach>
		</ul>
	</h4>
</body>
</html>