package controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.Admin;
import beans.Customer;
import dao.CustomerDAO;

@Controller
public class CustomerController {

	@Autowired
	CustomerDAO dao;
		
	public CustomerDAO getDao() {
		return dao;
	}
	
	public void setDao(CustomerDAO dao) {
		this.dao = dao;
	}

	//registration 
	@RequestMapping("/register")
	public ModelAndView displayForm()
	{
		return new ModelAndView("customerform","st",new Customer());
	}
	
	@RequestMapping("/addcustomer")
	public String insert(@ModelAttribute("st")Customer customer , ModelMap map)
	{//db insert operation
		dao.insert(customer);
		map.put("added",customer );
		return "result";
	}
	

	@RequestMapping("/login ")
	public ModelAndView displayForm1()
	{
		return new ModelAndView("loginform","st",new Customer());
	}
	
	@RequestMapping("/logincheck")
	public String insert1(@ModelAttribute("st")Customer c1  , ModelMap map)
	{//db insert operation
		List<Customer> all=dao.check();
		map.put("alldata",all );
		for(Customer c : all)
		{
			if(c1.getEmail().equals(c.getEmail()) && c1.getPwd().equals(c.getPwd()))
			{
				return "success";
			}
		}
		
		
		return "fail";
	}
}
