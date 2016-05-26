package demoapp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import demoapp.model.Product;
import demoapp.service.ProductService;


@Controller
public class ProductController {

	private ProductService productService;
    
    @Autowired(required=true)
    @Qualifier(value="productService")
    public void setProductService(ProductService ps){
        this.productService = ps;
    }
    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){    
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/login?logout";
    }
    @RequestMapping(value = "/products", method = RequestMethod.GET)
    public String listProducts(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("listProducts", this.productService.listProducts());
        return "ProductAdmin";
    }
     
    //For add and update product both
    @RequestMapping(value= "/products/add", method = RequestMethod.POST)
    public String addProduct(@Valid @ModelAttribute("product") Product p,BindingResult res,Model model){
    	System.out.println("here 2");
    	if(res.hasErrors()) {
    	
    		model.addAttribute("listProducts", this.productService.listProducts());
            return "ProductAdmin";
        }
	    
        if(p.getId() == 0){
            //new product, add it
            this.productService.addProduct(p);
        }else{
            //existing product, call update
            this.productService.updateProduct(p);
        }
         
        return "redirect:/products";
         
    }
     
    @RequestMapping("/products/remove/{id}")
    public String removeProduct(@PathVariable("id") int id){
         
        this.productService.removeProduct(id);
        return "redirect:/products";
    }
  
    @RequestMapping("/products/edit/{id}")
    public String editProduct(@PathVariable("id") int id, Model model){
        model.addAttribute("product", this.productService.getProductById(id));
        model.addAttribute("listProducts", this.productService.listProducts());
        return "ProductAdmin";
    }
}
