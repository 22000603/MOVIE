<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Member.css" type="text/css">
<meta charset="UTF-8">
<title>Add Movie</title>
</head>
<body>

<h1>영화추가하기</h1>
<form action="addok" method="post">
<table>
<tr><td>제목:</td><td><input type="text" name="title"/></td></tr>
<tr><td>장르:</td><td><input type="text" name="genre"/></td></tr>
<tr><td>언어:</td><td><input type="text" name="lang"/></td></tr>
<tr><td>요약:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
</table>
<button type="button" onclick="location.href='/movie/list'"> View All Movies</button>
<button type="submit">등록하기</button> 

</form>

</body>
</html>