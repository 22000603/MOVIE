<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>new post</title>
<style>
#edit {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#edit td, #edit th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:left;
}
#edit tr:nth-child(even){background-color: #f2f2f2;}
#edit tr:hover {background-color: #ddd;}
#edit th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
</head>
<body>

<h1>새 글쓰기</h1>
<form action="addok" method="post">
	<table id="edit">
		<tr><th>카테고리</th><td><input type="text" name="category"></td></tr>
		<tr><th>제목</th><td><input type="text" name="title"/></td></tr>
		<tr><th>글쓴이</th><td><input type="text" name="writer"/></td></tr>
		<tr><th>내용</th><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
	</table>
	<button type="button" onclick="location.href='list'">목록보기</button>
	<button type="submit">등록하기</button>
</form>

</body>
</html>