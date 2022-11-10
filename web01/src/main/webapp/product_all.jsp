<%@page import="db_connect.ProductVO"%>
<%@page import="db_connect.ProductDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//입력 > 처리 > 출력
    	ProductDAO dao = new ProductDAO();
    	ArrayList<ProductVO> list = dao.list();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>게시물 전체 개수 : <%= list.size() %>개</h3>
<table border="1">
<tr>
	<th>아이디</th>
	<th>이름</th>
	<th>내용</th>
	<th>가격</th>
	<th>회사</th>
	<th>이미지</th>
</tr>
<%
	for(ProductVO bag : list){
%>
<tr>
	<td><%= bag.getId() %></td>
	<td>
	<a href="http://localhost:8888/web01/product_one.jsp?id=<%= bag.getId() %>"><%= bag.getName() %></a>
	</td>
	<td><%= bag.getContent() %></td>
	<td><%= bag.getPrice() %></td>
	<td><%= bag.getCompany() %></td>
	<td><img src="img/<%= bag.getImg() %>"></td>
</tr>
<%
	} //for
%>
</table>
</body>
</html>