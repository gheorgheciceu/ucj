package ucj.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;


import ucj.entity.Role;

@Entity
public class Admin {

	@Id
	@GeneratedValue
	private int id;

	@Size(min = 2, message = "Numele trebuie sa fie format din cel putin din 2 caractere !")
	private String name;

	@Size(min = 5, message = "Parola trebuie sa fie formata din cel putin din 5 caractere !")
	private String password;

	@ManyToOne
	@JoinColumn(name = "role")
	private Role role;

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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
	
	

}
