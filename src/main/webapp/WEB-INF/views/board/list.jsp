<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.project.movie.board.BoardDAO, com.project.movie.board.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<<<<<<< HEAD
<title>Free Board</title>
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
		if(a) location.href='/movie/delete/' + id;
	}
</script>
</head>
<body>
<h1>자유게시판</h1>
<table id="list" width="90%">
<tr>
	<th>Id</th>
	<th>Title</th>
	<th>Genre</th>
	<th>Lang</th>
	<th>Content</th>
	<th>Score</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.id}</td>
		<td>${u.title}</td>
		<td>${u.genre}</td>
		<td>${u.lang}</td>
		<td>${u.content}</td>
		<td>${u.score}</td>
		<td><a href="/movie/edit/${u.id}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.id}')">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/><button type="button" onclick="location.href='/movie/add'"> 새글쓰기 </button>
=======
<title>Movie Board</title>
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
		if(a) location.href='/movie/delete/' + id;
	}
</script>
</head>
<body>
<h1>영화게시판</h1>
<table id="list" width="90%">
<tr>
	<th>Id</th>
	<th>Title</th>
	<th>Genre</th>
	<th>Lang</th>
	<th>Content</th>
	<th>Score</th>
	<th>Review</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.id}</td>
		<td>${u.title}</td>
		<td>${u.genre}</td>
		<td>${u.lang}</td>
		<td>${u.content}</td>
		<td>${u.score}</td>
		<td><a href="/movie/review/${u.id}">Review</a></td>
		<td><a href="/movie/edit/${u.id}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.id}')">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/><button type="button" onclick="location.href='/movie/add'"> 영화등록 </button>
>>>>>>> refs/remotes/origin/review
</body>
</html>