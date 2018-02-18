package com.model;


import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

import org.springframework.beans.factory.annotation.Autowired;

//Entity class for Cart Table
@Entity
@Table(name = "CartDetails")
public class CartModel implements Serializable {
	
	@Id
	@GeneratedValue
	
	private int cartId;


	private int cartProductId;
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "userMailId")
	private User cartUserDetails;
	@Column(name = "cartPrice")
	private Double cartPrice;
	@Column(name = "cartQuantity")
	private int cartQuantity;
	

	private String cartImage;
	private String cartProductName;
	
	public CartModel() {

	}

	public CartModel(int cartId, int cartProductId, User cartUserDetails,
	Double cartPrice, int cartQuantity) {
	this.cartId = cartId;
	this.cartProductId = cartProductId;
	this.cartUserDetails = cartUserDetails;
	this.cartPrice = cartPrice;
	this.cartQuantity = cartQuantity;
	
	}

	public String getCartImage() {
		return cartImage;
	}

	public void setCartImage(String cartImage) {
		this.cartImage = cartImage;
	}

	public String getCartProductName() {
		return cartProductName;
	}

	public void setCartProductName(String cartProductName) {
		this.cartProductName = cartProductName;
	}

	public int getCartId() {
	return cartId;
	}

	public void setCartId(int cartId) {
	this.cartId = cartId;
	}

	public int getCartProductId() {
	return cartProductId;
	}

	public void setCartProductId(int cartProductId) {
	this.cartProductId = cartProductId;
	}

	public User getCartUserDetails() {
	return cartUserDetails;
	}

	public void setCartUserDetails(User cartUserDetails) {
	this.cartUserDetails = cartUserDetails;
	}

	public Double getCartPrice() {
	return cartPrice;
	}

	public void setCartPrice(Double cartPrice) {
	this.cartPrice = cartPrice;
	}

	public int getCartQuantity() {
	return cartQuantity;
	}

	public void setCartQuantity(int cartQuantity) {
	this.cartQuantity = cartQuantity;
	}


}