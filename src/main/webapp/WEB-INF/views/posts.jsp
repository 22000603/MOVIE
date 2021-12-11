<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.project.movie.board.BoardDAO, com.project.movie.board.BoardVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>movie review page</title>
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
		if(a) location.href='deleteok/' + id;
	}
</script>
</head>
<body>
<h1>영화 리뷰 게시판</h1>
<%-- <%
	BoardDAO boardDAO = new BoardDAO();
	List<BoardVO> list = boardDAO.getBoardList();
	request.setAttribute("list",list);
%> --%>
<table id="list" width="90%">
<tr>
	<th>Id</th>
	<th>제목</th>
	<th>장르</th>
	<th>언어</th>
	<th>설명</th>
	<th>리뷰보기</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.getSeq()}</td>
		<td>${u.getTitle()}</td>
		<td>${u.getLang()}</td>
		<td>${u.getContent()}</td>
		<td>${u.getRegdate()}</td>
		<td><a href="editpost/${u.getSeq()}">수정</a></td>
		<td><a href="javascript:delete_ok('${u.getSeq()}')">삭제</a></td>
	</tr>
</c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'">글등록</button>
</body>
</html>