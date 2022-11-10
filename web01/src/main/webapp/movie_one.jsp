<%@page import="db_connect.MovieVO"%>
<%@page import="db_connect.MovieDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String title = request.getParameter("TITLE");
    
    	MovieDAO dao = new MovieDAO();
    	MovieVO bag = dao.one(title);
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
<h3>찾으시는 영화 결과입니다.</h3>
<table class = "table-dark table-striped">
	 <tr>
        <th>항목명</th>
        <th>데이터</th>
      </tr>
	 <tr>
        <td>제목</td>
        <td><%= bag.getTitle() %></td>
      </tr>
	 <tr>
        <td>상영여부</td>
        <td><%= bag.getScreening() %></td>
     </tr>
	 <tr>
        <td>국내/외</td>
        <td><%= bag.getCountry() %></td>
      </tr>
	 <tr>
        <td>포스터</td>
        <td><img src="img/movie/<%= bag.getPoster() %>"></td>
      </tr>
	 <tr>
        <td>상영년도</td>
        <td><%= bag.getYear() %></td>
     </tr>
</table>
</body>
</html>