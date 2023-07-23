<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Book Title: <c:out value="${book.title}"/></h1>
	<h2>Book Description: <c:out value="${book.description}"/></h2>
	<h2>Book Language: <c:out value="${book.language}"/></h2>
	<h2>Book Number of Pages: <c:out value="${book.numberOfPages}"/></h2>
</body>
</html>