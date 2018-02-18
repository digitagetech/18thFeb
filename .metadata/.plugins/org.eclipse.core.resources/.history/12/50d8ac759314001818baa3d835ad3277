package com.niit;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.GroceryBackendApp.dao.CartDao;
import com.niit.GroceryBackendApp.dao.CategoryDao;
import com.niit.GroceryBackendApp.dao.ProductDao;
import com.niit.GroceryBackendApp.dao.UserDao;
import com.niit.GroceryBackendApp.model.Product;
import com.niit.GroceryBackendApp.model.User;

@Controller
public class UserController 
{
	
	
	@Autowired
	UserDao userDao;

	@Autowired
	ProductDao productDAO;
	
	@Autowired
	CategoryDao categoryDAO;
	
	
	@Autowired
	CartDao cartDao;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView showRegister() {

		ModelAndView mav = new ModelAndView();
		mav.addObject("user", new User());
		mav.setViewName("register");
		return mav;
	}

	@RequestMapping(value = "/saveRegister", method = RequestMethod.POST)
	public ModelAndView doRegister(@Valid @ModelAttribute("user") User user, BindingResult result) {
		ModelAndView mav = new ModelAndView();

		if (result.hasErrors())

		{
			mav.setViewName("register");

			return mav;
		} else {
			user.setRole("ROLE_USER");
			user.setEnabled(true);
			userDao.insertUser(user);
			mav.setViewName("redirect:/login");
			return mav;
		}

	}
	
	@RequestMapping("/error")
	public  String errorPage(){
		return "error";
		
	}
	
	@RequestMapping("/userLogged")
	public  String userLogged(){
		return "redirect:/";
		
	}
	
	@ModelAttribute
	public void addAttributes(Model model) {
	   model.addAttribute("catList", categoryDAO.retrieve());
	} 
	
	
	@RequestMapping(value="/productCustList") 
	public ModelAndView displayCustProducts(@RequestParam("cid") int cid)
	{ 
		System.out.println(cid); 
	ModelAndView mv=new ModelAndView("ProductCustomerList"); 
	//mv.getModelMap().addAttribute("custProducts",productDAO.getProductsByCategory(cid));
	
	mv.addObject("custProducts",productDAO.getProductsByCategory(cid));
	return mv; 
	}

	@RequestMapping(value="/productDescription/{cid}")
	public ModelAndView productDescription(@PathVariable("cid") int cid)
	
	{
		
		ModelAndView mav=new ModelAndView();
		
		Product product=productDAO.findbyId(cid);
		
		mav.addObject("product", product);
		
		mav.setViewName("details");
		return mav;
				
		
		
	}
	
	
	
		
	}
	
	
	
	
	
	

