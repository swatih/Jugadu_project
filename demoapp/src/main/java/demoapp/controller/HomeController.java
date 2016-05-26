package demoapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import demoapp.model.Product;
import demoapp.service.ProductService;



@Controller
public class HomeController {

	private ProductService productService;
    
    @Autowired(required=true)
    @Qualifier(value="productService")
    public void setProductService(ProductService ps){
        this.productService = ps;
    }
     
    @RequestMapping("/")
    public String viewhomepage(Model model) {
        return "index";
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(@RequestParam(value = "error", required = false) String error,
    		@RequestParam(value = "logout", required = false) String logout) {

    	  ModelAndView model = new ModelAndView();
    	  if (error != null) {
    		model.addObject("error", "Invalid username and password!");
    	  }
          
    	  if (logout != null) {
    		model.addObject("msg", "You've been logged out successfully.");
    	  }
    	  model.setViewName("login");

    	  return model;

    	}
    	
    
    @RequestMapping("/laptops")
    public ModelAndView viewlaptops()
    {
    	 List<Product> l=productService.listProducts();
      	 Gson gson=new Gson();
  	    String s=gson.toJson(l);//list converted to json string 
	
     System.out.println(s);  
   	
       
       return new ModelAndView("laptops","listOfLaptops",s);
  	
    	
    }
    
    @RequestMapping("/homeuse")
    public ModelAndView viewbycategory(){
         String category="Home Use";
   	 List<Product> l=this.productService.getProductsByCategory(category);
   	Gson gson=new Gson();
	    String s=gson.toJson(l);//list converted to json string 

 System.out.println(s);  
	
   
   return new ModelAndView("laptops","listOfLaptops",s);
	
    }
  
    
    
    @RequestMapping("/details")
    public ModelAndView detailpage() {
 	
 	 ModelAndView m=new ModelAndView("details");
 	 
   
       return m;
    }
   
       
    
}