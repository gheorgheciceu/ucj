package ucj.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

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

}
