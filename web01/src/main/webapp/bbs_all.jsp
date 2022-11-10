<%@page import="java.util.Random"%>
<%@page import="db_connect.BbsVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db_connect.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 입력 -- 처리 -- 출력 -->
<%
BbsDAO dao = new BbsDAO();
ArrayList<BbsVO> list = dao.list();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<style type="text/css">
th{
background: lime;
}
</style>
<%
	String[] colors = {"primary", "success", "info", "warning", "danger",
						"active", "secondary", "light", "dark"};
	Random r = new Random();
	
%>
</head>
<body>
	<h3>
		게시물 전체 개수 :
		<%=list.size()%>개
	</h3>
	<table border="1" class="table table-hover">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>내용</th>
		</tr>
		<%
		for (int i = 0; i < list.size(); i++) {
		%>
		<tr class="table-<%= colors[r.nextInt(9)] %>">
			<td>
			<a href="http://localhost:8888/web01/bbs_one.jsp?no=<%= list.get(i).getNo() %>"><%=list.get(i).getNo()%></a>
			</td>
			<td><%=list.get(i).getTitle()%></td>
			<td><%=list.get(i).getContent()%></td>
		</tr>
		<%
		} //for
		%>
	</table>
</body>
</html>