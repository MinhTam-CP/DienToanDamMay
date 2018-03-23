package poly.controller;


import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class StudentController {

	
	
	@RequestMapping(value="/student", method= RequestMethod.GET)
	public String showForm() {
		return "student/form";
	}
	
	@RequestMapping(value="/student", method= RequestMethod.POST)
	public String saveData(HttpServletRequest request) {
		//getParameter("name") lấy dữ liệu bên <input name="name"/>(forrm)
		String name = request.getParameter("name");
		String mark = request.getParameter("mark");
		String majour = request.getParameter("majour");
		
		//"ten" là biến rỗng, name là lấy String name = request.getParameter("name");
		request.setAttribute("ten", name);
		request.setAttribute("diem", mark);
		request.setAttribute("nganh", majour);
		return "student/success";
	}
}
