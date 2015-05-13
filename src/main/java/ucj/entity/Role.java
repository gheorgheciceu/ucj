package ucj.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;


import ucj.entity.User;

import ucj.entity.Admin;

@Entity
public class Role {

	@Id
	@GeneratedValue
	private int id;

	private String roleName;

	@OneToMany(mappedBy = "role", cascade = CascadeType.ALL)
	private List<Admin> adminList;
	
	@OneToMany(mappedBy = "role", cascade = CascadeType.ALL)
	private List<User> users;

}
