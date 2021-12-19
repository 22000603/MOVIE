<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.project.movie.review.ReviewDAO, com.project.movie.review.ReviewVO,java.util.*"%>
	<%@page import="com.project.movie.board.BoardDAO, com.project.movie.board.BoardVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Review Board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='/review/${category}/delete/' + id;
	}
</script>
</head>
<body>
<h1>리뷰게시판</h1> 
<table id="list" width="90%">
<tr>
	<th>id</th>
	<th>점수</th>
	<th>리뷰</th>
	<th>수정</th>
	<th>삭제</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.id}</td>
		<td>${u.score}</td>
		<td>${u.review}</td>
		<td><a href="/review/${category}/edit/${u.id}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.id}')">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/><button type="button" onclick="location.href='/review/${category}/add'"> 리뷰등록 </button>
<button type="button" onclick="location.href='/list'"> 영화목록 </button>
</body>
</html>