<%@page import="db_connect.BbsDAO"%>
<%@page import="db_connect.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	
	String id = request.getParameter("id"); //<input name = "id">, 외부에서 입력한 데이터타입 '무조건' String;
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer");
	
	BbsVO bag = new BbsVO();
	bag.setId(id);
	bag.setTitle(title);
	bag.setContent(content);
	bag.setWriter(writer);
	
	//2.sql문을 만들어서, db서버에 전송(jdbc프로그래밍)
	BbsDAO dao = new BbsDAO();
	dao.delete(id);
	
	//3.결과를 클라이언트에 html로 알려줌!
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background: orange;
}
</style>
</head>

<body>
	<%= id %>님이 삭제한 게시판 내용입니다. <hr style="background-color: blue;">
	아이디 >> <%= id %> <br> <!-- 램(변수)에 있는 값 브라우저에 표현해줘. 라는 개념! : 표현식!!! -->
	제목 >> <%= title %> <br>
	내용 >> <%= content %> <br>
	작성자 >> <%= writer %> <hr style="background-color: blue;">
	<a href = "bbs.html">앞페이지로 가기</a>
</body>
</html>















