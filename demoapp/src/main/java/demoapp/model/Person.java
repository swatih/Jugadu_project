package demoapp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Person {
 
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
    private int enabled=1;
    private String role="ROLE_USER";
	@NotEmpty(message="Field can't be blank")
    private String name;
	@NotEmpty(message="Field can't be blank")
	private String country;
	@NotEmpty(message="Field can't be blank")
	private String email;
	@Length(min = 8, message = "The field must be at least 5 characters")
	private String password;
    
	public int getEnabled() {
		return enabled;
	}


	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}


	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

    public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}

	
    
     public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	@Override
    public String toString(){
        return "id="+id+", email="+email+", password="+password;
    }
}