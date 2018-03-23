<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<base href="${pageContext.servletContext.contextPath }/">
</head>
<body>
<h1>Cập nhật SV Poly</h1>
<ul>
	<li>Họ và tên: ${student.name}</li>
	<li>Điểm: ${student.mark}</li>
	<li>Chuyên ngành: ${student.majour}</li>
</ul>
</body>
</html>