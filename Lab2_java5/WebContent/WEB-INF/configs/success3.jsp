<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<base href="${pageContext.servletContext.contextPath }/">
</head>
<body>
<h1>Sửa SV</h1>
<ul>
	<li>Họ và tên: ${student.name}</li>
	<li>Điểm: ${student.mark}</li>
	<li>Chuyên ngành: ${student.majour}</li>
</ul>
</body>
</html>