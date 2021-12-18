<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Member.css" type="text/css">
<meta charset="UTF-8">
<title>Add Review</title>
</head>
<body>

<h1>새 리뷰 등록하기</h1>
<form action="addreviewok" method="post">
<table>
<tr><td>점수:</td><td><input type="text" name="score"/></td></tr>
<tr><td>리뷰:</td><td><textarea cols="50" rows="5" name="review"></textarea></td></tr>
</table>
<button type="button" onclick="location.href='/movie/review/${category}'"> View All Reviews</button>
<button type="submit">등록하기</button> 

</form>

</body>
</html>