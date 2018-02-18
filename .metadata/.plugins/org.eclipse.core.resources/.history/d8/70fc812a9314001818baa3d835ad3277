package com.niit;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.Order;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.GroceryBackendApp.Item;
import com.niit.GroceryBackendApp.dao.CartDao;
import com.niit.GroceryBackendApp.dao.CategoryDao;
import com.niit.GroceryBackendApp.dao.OrdersDao;
import com.niit.GroceryBackendApp.dao.ProductDao;
import com.niit.GroceryBackendApp.model.CartModel;
import com.niit.GroceryBackendApp.model.Orders;
import com.niit.GroceryBackendApp.model.Product;
import com.niit.GroceryBackendApp.model.User;

@Controller
public class CartController {

	
	int a;
	@Autowired
	ProductDao productDao;

	@Autowired
	com.niit.GroceryBackendApp.dao.UserDao userDao;

	@Autowired
	CartDao cartDao;

	@Autowired
	OrdersDao orderDao;

	@Autowired
	CategoryDao categoryDao;

	

	@RequestMapping(value="/addToCart",method=RequestMethod.POST)
	public ModelAndView addToCart(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();

		try {
			Principal principal = request.getUserPrincipal();
			String userEmail = principal.getName();
			int pid = Integer.parseInt(request.getParameter("pId"));
			a=pid;
			Double price = Double.parseDouble(request.getParameter("pPrice"));
			int quantity = Integer.parseInt(request.getParameter("quant"));
			String productName=request.getParameter("name");
			String imgName=request.getParameter("imgName");
			CartModel cartExist=cartDao.getCartById(pid, userEmail);
			if(cartExist==null){
				CartModel cm = new CartModel();
				
				cm.setCartPrice(price);
                
				cm.setCartProductId(pid);
				cm.setCartQuantity(quantity);
				cm.setCartImage(imgName);
				cm.setCartProductName(productName);

				User u = userDao.findbyUserId(userEmail);
				cm.setCartUserDetails(u);	
				cartDao.insert(cm);
				
			}
			else
			{
               CartModel cm = new CartModel();
				cm.setCartId(cartExist.getCartId());
				cm.setCartPrice(price);

				cm.setCartProductId(pid);
				cm.setCartImage(imgName);
				cm.setCartProductName(productName);
				cm.setCartQuantity(cartExist.getCartQuantity()+quantity);
				User u = userDao.findbyUserId(userEmail);
				cm.setCartUserDetails(u);
				cartDao.update(cm);
			}
			
			//Product product = productDao.findbyId(pid);

			// mav.addObject("product", product);
           
			
			
			
		
			mav.addObject("cartInfo", cartDao.findCartById(userEmail));

			//mav.addObject("product", product);
			mav.setViewName("cart");

			return mav;
		} catch (Exception ex) 
		{
			mav.setViewName("loginModal");
			return mav;
		}
	}

	@RequestMapping("/checkout")
	public ModelAndView checkout(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("checkout");
		Principal principal = request.getUserPrincipal();
		String userEmail = principal.getName();
		User u = userDao.findbyUserId(userEmail);
		List<CartModel> cart = cartDao.findCartById(userEmail);

		mav.addObject("user", u);
		mav.addObject("cart", cart);

		return mav;

	}

	@RequestMapping(value = "/invoiceprocess", method = RequestMethod.POST)
	public ModelAndView orderSave(HttpServletRequest request) {

		ModelAndView mav = new ModelAndView("invoice");
		Orders oo = new Orders();
		Double d = Double.parseDouble(request.getParameter("total"));
		String payment = request.getParameter("payment");
		Principal principal = request.getUserPrincipal();
		String email = principal.getName();
		User user = userDao.findbyUserId(email);

		oo.setUser(user);
		oo.setTotal(d);
		oo.setPayment(payment);
		orderDao.addOrder(oo);
		mav.addObject("userDetails", user);
		return mav;
	}

	@RequestMapping(value = "/ackAction")
	public ModelAndView invoiceaction(HttpServletRequest request) {
		return new ModelAndView("acknowledgement");
	}

	
	@RequestMapping(value="/deletePCart/{cardId}")
	public ModelAndView deleteProductFromCart(@PathVariable("cardId") int cartId,HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		Principal principal = request.getUserPrincipal();
		String userEmail = principal.getName();
		cartDao.delete(cartId);
		mav.addObject("cartInfo", cartDao.findCartById(userEmail));

		
		//Product product = productDao.findbyId(a);


		//mav.addObject("product", product);
		mav.setViewName("cart");
		return mav;
	}
	
	@ModelAttribute
	public void addAttributes(Model model) {
	   model.addAttribute("catList", categoryDao.retrieve());
	} 
	
	
	@RequestMapping("checkout1")
	public String checkout(){
		
		return "redirect:/checkoutflow";
		
	}
	
}