<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PIZZA SHOP</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<%@include file="common/header.jsp" %>
	<%@include file="common/nav.jsp" %>
	
	<section>
		<% 
		String section = request.getParameter("section") != null ? request.getParameter("section") : "";
		
		switch(section) {
		case "sale_create" :
			%><%@include file="section/sale_create.jsp" %><%
			break;
			
		case "sale_list" :
			%><%@include file="section/sale_list.jsp" %><%
			break;
			
		case "sale_list_by_shop" :
			%><%@include file="section/sale_list_by_shop.jsp" %><%
			break;
			
		case "sale_list_by_product" :
			%><%@include file="section/sale_list_by_product.jsp" %><%
			break;
		
		default :
			%><h4>피자전문점 판매관리 프로그램을 작성한다.</h4><%
			break;
			
		}
		%>
	</section>
	
	<%@include file="common/footer.jsp" %>
	
</body>
</html>