package net.danoe.onlineshopping.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import net.danoe.shoppingbackend.dao.CategoryDao;
import net.danoe.shoppingbackend.dto.CategoryDto;

@Controller
public class PageController {

	@Autowired
	private CategoryDao categoryDao;
	
	
	@RequestMapping(value = {"/", "/home", "/index"})
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		mv.addObject("userClickHome", true);
		
		mv.addObject("categories", categoryDao.list());
		return mv;
	}
	
	@RequestMapping(value = "/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "About Us");
		mv.addObject("userClickAbout", true);
		return mv;
	}
	
	@RequestMapping(value = "/contact")
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Contact Us");
		mv.addObject("userClickContact", true);
		return mv;
	}
	
	// load all product base on category
	@RequestMapping(value = "/show/all/products")
	public ModelAndView showAllProducts() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "All Products");
		mv.addObject("categories", categoryDao.list());
		mv.addObject("userClickAllProducts", true);
		return mv;
	}
	
	// load product base on category
	@RequestMapping(value = "/show/category/{categoryId}/products")
	public ModelAndView showCategoryProducts(@PathVariable("categoryId") int categoryId) {
		ModelAndView mv = new ModelAndView("page");
		
		// categoryDao to fetch single category
		CategoryDto category = null;
		category = categoryDao.selectById(categoryId);
		mv.addObject("title", category.getCategoryName());
		
		mv.addObject("categories", categoryDao.list());
		mv.addObject("category", category);
		mv.addObject("userClickCategoryProducts", true);
		return mv;
	}
	
/*	@RequestMapping(value = "/test")
	public ModelAndView test(@RequestParam(value = "greeting", required=false) String greeting) {
		if (greeting == null) {
			greeting = "Hello There";
		}
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("greeting", greeting);
		return mv;
	}*/
	
	/*dinamic*/
/*	@RequestMapping(value = "/test/{greeting}")
	public ModelAndView test(@PathVariable("greeting") String greeting) {
		if (greeting == null) {
			greeting = "Hello There";
		}
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("greeting", greeting);
		return mv;
	}*/
}
