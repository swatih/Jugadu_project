package demoapp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;


@Entity
public class Product {
	
	 @Id
	 @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	 @NotEmpty(message="Field can't be blank")
	private String name;
	 @NotEmpty(message="Field can't be blank")
	private String desc;
	 @NotEmpty(message="Field can't be blank")
	private String brand;
	 @Range(min=1, message="Enter the correct price") 
	private int price;
	@NotEmpty(message="Field can't be blank")
	private String category;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	@Override
    public String toString(){
        return "id="+id+", name="+name+", brand="+brand+", desc="+desc+", price="+price+", category="+category;
    }

}
