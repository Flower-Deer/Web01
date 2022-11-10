<%@page import="db_connect.MemberVO"%>
<%@page import="db_connect.MemberDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = request.getParameter("id");
    
    	MemberDAO dao = new MemberDAO();
    	MemberVO bag = dao.one(id);
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
<h3><%= bag.getName() %></h3>
<table class = "table-dark table-striped">
	 <tr>
        <th>항목명</th>
        <th>데이터</th>
      </tr>
	 <tr>
        <td>아이디</td>
        <td><%= bag.getId() %></td>
      </tr>
	 <tr>
        <td>비밀번호</td>
        <td><%= bag.getPw() %></td>
      </tr>
	 <tr>
        <td>이름</td>
        <td><%= bag.getName() %></td>
      </tr>
	 <tr>
        <td>전화번호</td>
        <td><%= bag.getTel() %></td>
      </tr>
</table>
</body>
</html>