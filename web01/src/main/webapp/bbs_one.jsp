<%@page import="db_connect.BbsVO"%>
<%@page import="db_connect.BbsDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String no = request.getParameter("no");
    
   		BbsDAO dao = new BbsDAO();
   		BbsVO bag = dao.one(Integer.parseInt(no));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>
<h3>검색된 결과입니다.</h3>
<h3><%= bag.getNo() %></h3>
<table class = "table-dark table-striped">
	 <tr>
        <th>항목명</th>
        <th>데이터</th>
      </tr>
	 <tr>
        <td>번호</td>
        <td><%= bag.getNo() %></td>
      </tr>
	 <tr>
        <td>제목</td>
        <td><%= bag.getTitle() %></td>
      </tr>
	 <tr>
        <td>내용</td>
        <td><%= bag.getContent() %></td>
      </tr>
</table>
</body>
</html>