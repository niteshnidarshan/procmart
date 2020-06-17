package com.proc.kart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class Product{

	@Id
	@GenericGenerator(name = "prd_id", strategy = "increment")
	@GeneratedValue(generator = "prd_id")
	private int prodid;
	private String name;
	private double saleprice;
	public int getProdid() {
		return prodid;
	}
	public void setProdid(int prodid) {
		this.prodid = prodid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getSaleprice() {
		return saleprice;
	}
	public void setSaleprice(double saleprice) {
		this.saleprice = saleprice;
	}
	@Override
	public String toString() {
		return "Product [prodid=" + prodid + ", name=" + name + ", saleprice=" + saleprice + "]";
	}
	
	
	
}
