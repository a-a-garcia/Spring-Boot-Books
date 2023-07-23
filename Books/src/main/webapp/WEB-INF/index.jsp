<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.Date"%> <!-- Tells us meta info, what language we're using.. etc.. we can add edits later. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script type="text/javascript" src="/js/script.js"></script>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/style.css"/>
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>


<div class="card">
  <div class="card-body">
    <table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Title</th>
      <th scope="col">Description</th>
      <th scope="col">Language</th>
      <th scope="col">Number Of Pages</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="book" items="${allBooks}">
    <tr>
      <th><c:out value="${book.id }"></c:out></h2>
      <th scope="row"><a href="/books/${book.id}"><c:out value="${book.title}"></c:out></a></th>
      <th scope="row"><c:out value="${book.description}"></c:out></th>
      <th scope="row"><c:out value="${book.language}"></c:out></th>
      <th scope="row"><c:out value="${book.numberOfPages}"></c:out></th>
    </tr>
  </c:forEach>
  </tbody>
</table>
  </div>
</div>
	



</body>
</html>