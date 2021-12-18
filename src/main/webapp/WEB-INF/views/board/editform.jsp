<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.project.movie.board.BoardDAO, com.project.movie.board.BoardVO"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 

<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Member.css">
<meta charset="UTF-8">

<title>Edit Movie</title>
</head>
<body>
<h1>영화수정</h1>
<form:form commandName="boardVO" method="post" action="../editok">
<form:hidden path="id"/>
<table id="edit">
  <tr><td>장르</td><td> <form:input path="genre" /> </td></tr>
  <tr><td>제목</td><td> <form:input path="title" /> </td></tr>
  <tr><td>언어</td><td> <form:input path="lang" /> </td></tr>
  <tr><td>내용</td><td> <form:textarea cols="50" rows="5" path="content" /> </td></tr>
</table>
<input type="submit" value="수정하기"/>
<input type="button" value="취소하기" onclick="history.back()"/>
</form:form>

</body>
</html>