package com.ecity.backend.dao;


import java.io.IOException;
import java.util.List;

import com.ecity.backend.model.CartModel;
import com.ecity.backend.model.Product;

public interface CartDao
{

	
	void insert(CartModel cart);
	public List<CartModel> findCartById(String userId);
	public void delete(int cart);
	public void update(CartModel cart);
	public CartModel getCartById(int pid,String userEmail);
}