<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page import="com.project.movie.board.BoardDAO, com.project.movie.board.BoardVO,java.util.*"%>
<%@ page pageEncoding="utf-8"%>
<div class="jumbotron">
    <h1>${ boardVO.title }</h1>
    <p>${ boardVO.genre }</p>
</div>