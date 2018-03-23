package poly.controller;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.bean.Student;



@Controller
@RequestMapping("/student-1")

public class StudentMgrController {
	@Autowired
	ServletContext application;
	@RequestMapping("index1")
//Bài 1
	public String index (HttpServletRequest request, HttpSession session) {
		application.setAttribute("name", "Nguyễn Thị Minh Tâm");
		application.setAttribute("level", 2);
		session.setAttribute("name", "Nguyễn Thị Thủy");
		session.setAttribute("level", 4);
		request.setAttribute("name", "Đỗ Thị Chinh");
		request.setAttribute("level", 3);
		
		session.setAttribute("salary", 1000);
		request.setAttribute("photo", "images/SV.jpg");
		return "student-1";
		
		}
	
	@RequestMapping("index2")
	public String index2(ModelMap model) {
	Student sv1 = new Student("Phạm Minh Tuấn", 5.5, "Ứng dụng phần mềm");
	Student sv2 = new Student("Nguyễn Thị Kiều Oanh", 9.5, "Thiết kế trang web");
	Student sv3 = new Student("Lê Phạm Tuấn Kiệt", 3.5, "Thiết kế trang web");
	
	List<Student> list = new ArrayList<>();
	list.add(sv2);
	list.add(sv3);
	Map<String, Student> map = new HashMap<>();
	map.put("OanhNTK", sv2);
	map.put("KietLPT", sv3);
	model.addAttribute("bean", sv1);
	model.addAttribute("list", list);
	model.addAttribute("map", map);
	return "student-2";
	}

	@RequestMapping("index3")
	public String index3(ModelMap model) {
	Student sv1 = new Student("Phạm Minh Tuấn", 5.5, "Ứng dụng phần mềm");
	Student sv2 = new Student("Nguyễn Thị Kiều Oanh", 9.5, "Thiết kế trang web");
	Student sv3 = new Student("Lê Phạm Tuấn Kiệt", 3.5, "Thiết kế trang web");
	
	List<Student> list = new ArrayList<>();
	list.add(sv2);
	list.add(sv3);
	Map<String, Student> map = new HashMap<>();
	map.put("OanhNTK", sv2);
	map.put("KietLPT", sv3);
	model.addAttribute("bean", sv1);
	model.addAttribute("list", list);
	model.addAttribute("map", map);
	return "student-3";
	}	
	
	@RequestMapping("index4")
	public String index4(ModelMap model) {
	Student sv1 = new Student("Phạm Minh Tuấn", 5.5, "Ứng dụng phần mềm");
	Student sv2 = new Student("Nguyễn Thị Kiều Oanh", 9.5, "Thiết kế trang web");
	Student sv3 = new Student("Lê Phạm Tuấn Kiệt", 3.5, "Thiết kế trang web");
	
	List<Student> list = new ArrayList<>();
	list.add(sv2);
	list.add(sv3);
	Map<String, Student> map = new HashMap<>();
	map.put("OanhNTK", sv2);
	map.put("KietLPT", sv3);
	model.addAttribute("bean", sv1);
	model.addAttribute("list", list);
	model.addAttribute("map", map);
	return "student-4";
	}
	}
