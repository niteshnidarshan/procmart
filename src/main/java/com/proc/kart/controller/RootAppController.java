package com.proc.kart.controller;

import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.proc.kart.dao.CustomerDAO;
import com.proc.kart.dao.ProductDAO;
import com.proc.kart.model.Customer;
import com.proc.kart.model.Product;

@Controller
@RequestMapping("/")
@EnableWebMvc
public class RootAppController {
 
	 @Autowired
	 ProductDAO productDao;
	 
	 @Autowired
	 CustomerDAO customerDao;
	 
	 @RequestMapping("product/{pid}")
	 public ModelAndView getProduct(@PathVariable("pid") int pid) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("product");
		
		Product product = productDao.getProduct(pid);
		mv.addObject("product",product);
		return mv;
	 }
	 
	 @RequestMapping("customer/register-form")
	 public ModelAndView getCustomerForm() {
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("customer");
		 return mv;
	 }
	 
	 @RequestMapping(value = "customer/persist", method = RequestMethod.POST)
	 public ModelAndView registerCustomer(@RequestBody Customer customer) {
		 
		 int result = customerDao.persistCustomer(customer);
		 
		 Customer persitedCustomer = customerDao.getCustomer(result);
		 ModelAndView mv = new ModelAndView();
		 
		 if(result > 0)
			 mv.addObject("message", "Success!"+persitedCustomer);
		 else 
			 mv.addObject("message", "Failed!");
		 mv.setViewName("message");
		 
		 return mv;

	 }
	 
}
