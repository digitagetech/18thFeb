package com;

import java.io.Serializable;

import com.model.Product;

public class Item implements  Serializable{

	private Product product= new Product();
	private int quantity;

  public Item(Product product, int quantity) {
		super();
		this.product = product;
		this.quantity = quantity;
	}
	public Item() {
		super();
	}

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
	
	public float getTotal(){
            float total=0;
            
            total=product.getPrice() * this.getQuantity();
            return total;
        }
	
}
