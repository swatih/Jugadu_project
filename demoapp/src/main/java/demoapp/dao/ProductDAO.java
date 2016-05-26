package demoapp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import demoapp.model.Product;

@Repository
public class ProductDAO {

	private static final Logger logger = LoggerFactory.getLogger(ProductDAO.class);
	 
    private SessionFactory sessionFactory;
     
    public void setSessionFactory(SessionFactory sf){
        this.sessionFactory = sf;
    }
 
    
    public void addProduct(Product p) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(p);
        logger.info("Product saved successfully, Product Details="+p);
    }
 
   
    public void updateProduct(Product p) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(p);
        logger.info("Product updated successfully, Product Details="+p);
    }
 
    @SuppressWarnings("unchecked")
   
    public List<Product> listProducts() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Product> productsList = session.createQuery("from Product").list();
        for(Product p : productsList){
            logger.info("Product List::"+p);
        }
        return productsList;
    }
 
 
    public Product getProductById(int id) {
        Session session = this.sessionFactory.getCurrentSession();      
        Product p = (Product) session.load(Product.class, new Integer(id));
        logger.info("Product loaded successfully, Product details="+p);
        return p;
    }
    
    public List<Product> getProductsByCategory(String ctg) {
        Session session = this.sessionFactory.getCurrentSession();
        Query q=session.createQuery("from Product where category=:c ");
        q.setParameter("c",ctg);
        List<Product> productsList = (List<Product>)q.list();
        return productsList;
    }
 
  
    public void removeProduct(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Product p = (Product) session.load(Product.class, new Integer(id));
        if(null != p){
            session.delete(p);
        }
        logger.info("Product deleted successfully, Product details="+p);
    }
}
