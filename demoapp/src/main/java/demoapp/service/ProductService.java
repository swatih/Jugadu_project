package demoapp.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import demoapp.dao.ProductDAO;
import demoapp.model.Product;

@Service
public class ProductService {

	private ProductDAO productDAO;
	 
    public void setProductDAO(ProductDAO productDAO) {
        this.productDAO = productDAO;
    }
 
    
    @Transactional
    public void addProduct(Product p) {
        this.productDAO.addProduct(p);
    }
 

    @Transactional
    public void updateProduct(Product p) {
        this.productDAO.updateProduct(p);
    }
 

    @Transactional
    public List<Product> listProducts() {
        return this.productDAO.listProducts();
    }
 
 
    @Transactional
    public Product getProductById(int id) {
        return this.productDAO.getProductById(id);
    }
 

    @Transactional
    public List<Product> getProductsByCategory(String s) {
        return this.productDAO.getProductsByCategory(s);
    }
 
    @Transactional
    public void removeProduct(int id) {
        this.productDAO.removeProduct(id);
    }
	
}
