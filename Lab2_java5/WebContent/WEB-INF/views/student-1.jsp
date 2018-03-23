<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<base href="${pageContext.servletContext.contextPath}/">
<style>
		div{
		display: inline-block;
		text-align: center;
		margin: 5px;
		padding:5px;
		border: 1px dotted orangered;
		border-radius: 5px;
		}
		img{
		width: 270px;
		height: 200px;
		}
</style>
<title>Insert title here</title>
</head>
<body>

	<h1>Bài 1</h1>
	<div>
		<img src="${photo}">
		<br>

		<strong>${applicationScope.name}</strong>
		<em>${salary*applicationScope.level}</em>
	</div>
	<div>
		<img src="${photo}">
		<br>
		<strong>${sessionScope.name}</strong>
		<em>${salary*sessionScope.level}</em>
	</div>
	<div>
		<img src="${photo}">
		<br>
		<strong>${requestScope.name}</strong>
		<em>${salary*requestScope.level}</em>
	</div>
</body>
</html>
