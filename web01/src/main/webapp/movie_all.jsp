<%@page import="db_connect.MovieVO"%>
<%@page import="db_connect.MovieDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//입력 > 처리 > 출력
    	MovieDAO dao = new MovieDAO();
    	ArrayList<MovieVO> list = dao.list();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="movie_one.html">
<button>검색하러 GOGO💘<button>
</a>
<h3>영화 포스터 개수 : <%= list.size() %>개</h3>
<table border="1">
	<tr>
		<th>제목</th>
		<th>상영여부</th>
		<th>국내/외</th>
		<th>포스터</th>
		<th>상영년도</th>
	</tr>
	<%
		for(MovieVO bag : list){
	%>
	<tr>
		<td>
			<a href="http://localhost:8888/web01/movie_one.jsp?TITLE=<%= bag.getTitle() %>"><%= bag.getTitle() %></a>
		</td>
		<td>
		<a href = "https://search.naver.com/search.naver?where=nexearch&sm=tab_etc&mra=bkEw&pkid=68&os=19131135&qvt=0&query=현재 상영중인 영화">
		<%= bag.getScreening() %>
		</a>
		</td>
		<td>
		<a href = "https://search.naver.com/search.naver?where=nexearch&sm=tab_etc&mra=bkEw&pkid=68&os=19131135&qvt=0&query=<%= bag.getCountry() %> 영화">
		<%= bag.getCountry() %>
		</a>
		</td>
		<td>
		<a href="https://search.naver.com/search.naver?where=nexearch&sm=tab_etc&mra=bkEw&pkid=68&os=19131135&qvt=0&query=<%= bag.getTitle() %> 예매">
		<img src="img/movie/<%= bag.getPoster() %>">
		</a>
		</td>
		<td><%= bag.getYear() %></td>
	</tr>
	<%
		} //for
	%>
</table>
</body>
</html>