package com.niit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.GroceryBackendApp.dao.CategoryDao;
import com.niit.GroceryBackendApp.dao.ProductDao;

@Controller
public class HomeController {

	@Autowired
	CategoryDao categoryDAO;
	@Autowired
	ProductDao productDAO;
	@RequestMapping(value = { "/", "/home" })
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("catList", categoryDAO.retrieve());
		return mav;

	}
	@ModelAttribute
	public void addAttributes(Model model) {
	   model.addAttribute("catList", categoryDAO.retrieve());
	} 

	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");
		return mav;

	}

	@RequestMapping("/register")
	public ModelAndView register() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("register");
		return mav;

	}

	
	@RequestMapping("/details")
	public ModelAndView productDetails() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("details");
		return mav;
	}

	/*@RequestMapping("/list")
	public ModelAndView productList() {
		ModelAndView mav = new ModelAndView("productTable");
		// userDAO.list();

		Category c1 = new Category();
		c1.setCid(1);
		c1.setName("Meats");
		categoryDAO.insertCategory(c1);
		mav.addObject("list", "done inserted the record");
		mav.setViewName("productTable");
		return mav;

	}*/
	


}
