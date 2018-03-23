<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<base href="${pageContext.servletContext.contextPath }/">
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
</head>
<body>
<h1>SV Poly</h1>
<form action="student.htm" method="post" id="formDemo">

	<div>Họ và tên</div>
	<input name="name"/>
	<div>Điểm trung bình</div>
	<input name="mark"/>
	<div>Chuyên ngành</div>
	<label>
	<input name="majour" type="radio" value="APP"/>
	Ứng dụng phần mềm
	</label>
		<label>
	<input name="majour" type="radio" value="WEB"/>
	Xây dựng trang web
	</label>
	<hr>
	<button>Lưu</button>
</form>

<script type="text/javascript">
 
    $(document).ready(function() {
 
        //Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
        $("#formDemo").validate({
            rules: {
               name: "required",
                mark: {
                	required = true,
                	min = 0,
                	max = 10
                
                }
            },
            messages: {
            	name: "Vui lòng nhập tên",
            	mark: {
            		required : "Vui lòng nhập điểm",
                	min: "Điểm không được dưới 0",
                	max: "Điểm không được trên 10"
            	}
                
            }
        });
    });
    </script>
</body>
</html>