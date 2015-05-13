package ucj.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class MenuItem {
	
	@Id
	@GeneratedValue
	private int id;
	
	private String title;
	
	private String content;
	
	private String type;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="menu_id")
	private MenuItem menu;
	
	@OneToMany(mappedBy = "submenu")
	private List<MenuItem> submenu = new ArrayList<MenuItem>();

}
