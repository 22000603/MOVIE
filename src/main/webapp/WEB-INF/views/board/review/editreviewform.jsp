<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.project.movie.review.ReviewDAO, com.project.movie.review.ReviewVO"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Member.css">
<meta charset="UTF-8">
<title>Edit Review</title>
</head>
<body>


<h1>리뷰수정</h1>
<form:form commandName="ReviewVO" method="post" action="editreviewok">
<form:hidden path="id"/>
<table id="edit">
  <tr><td>점수</td><td> <form:input path="score" /> </td></tr>
  <tr><td>리뷰</td><td> <form:textarea cols="50" rows="5" path="review" /> </td></tr>
</table>
<input type="submit" value="수정하기"/>
<input type="button" value="취소하기" onclick="history.back()"/>
</form:form>

</body>
</html>