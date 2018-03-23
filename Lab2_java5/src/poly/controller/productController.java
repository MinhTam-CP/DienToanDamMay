package poly.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.bean.product;

	@Controller
	@RequestMapping("/product/")
	public class productController {
	@RequestMapping("list")
	public String list(ModelMap model) {
	List<product> list = new ArrayList<>();
	list.add(new product("Nokia Star", 1000.0, 0.05));
	list.add(new product("iPhone 9", 1500.0, 0.1));
	list.add(new product("Samsung Galaxy N10", 750.0, 0.15));
	list.add(new product("Sony Experia", 500.0, 0.0));
	model.addAttribute("prods", list);
	return "product/list";

	}

}
