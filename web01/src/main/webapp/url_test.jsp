<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String[] id_list = {"kim", "youjin", "Sunday", "123"};
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//배열에 있는 사용자를 모두 링크할 수 있는 html코드를 만들어 보세요.
	//hint= for문사용!
	for (String s: id_list) {
%>
	<a href = "http://localhost:8888/web01/member_one.jsp?id=<%= s %>"><%= s %>인 사람의 정보</a><br>
<%
	}
%>
</body>
</html>