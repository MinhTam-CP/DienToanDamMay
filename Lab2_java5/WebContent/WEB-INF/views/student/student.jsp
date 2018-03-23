<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<base href="${pageContext.servletContext.contextPath}/">
<title>Insert title here</title>
</head>
<body>
	
</body>
<form action="student.htm" method="post">
<div>Họ và tên</div>
<input name="name" value="${student.name}"/>
<div>Điểm trung bình</div>
<input name="mark" value="${student.mark}"/>
<div>Chuyên ngành</div>
<label>
<input name="majour" type="radio" value="APP"
${student.major=='APP'?'checked':''}/>
Ứng dụng phần mềm
</label>
<label>
<input name="majour" type="radio" value="WEB"
${student.major=='WEB'?'checked':''}/>
Thiết kế trang web
</label>
<hr>
<button>Cập nhật</button>
</form>
</html>