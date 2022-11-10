<%@ page import="db_connect.ProductVO"%>
<%@page import="db_connect.ProductDAO"%>
<!-- @ : page'지시자'(tomcat WAS에게!!) -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- 
		1.입력
		2.처리(db처리 -dao, vo)
		3.출력(브라우저 출력, html)
	 -->
	 <!-- 1.데이터를 product_insert.html에서 입력해서 넘긴 값을 받으면 될 것. -->
	 <%
	 	//스크립트릿 (script + let --> 작은 자바코드)
	 	//주소부분 중에서 id=110
	 	String id = request.getParameter("id");
	 	
	 	ProductVO bag = new ProductVO();
	 	bag.setId(id);
	 	
	 	ProductDAO dao = new ProductDAO();
	 	dao.delete(id);
	 %>
	 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>게시물 삭제 정보 확인</h3>
<%= bag %> <!-- 표현식(expression) -->
<hr>
id : <%= id %> <br>
<hr>
<a href = "product_delete.html">
	<button>상품삭제 페이지로</button>
</a>
<a href = "product.html">
	<button>첫 메인 페이지로</button>
</a>
</body>
</html>