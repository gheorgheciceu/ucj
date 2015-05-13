package ucj.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Team {

	@Id
	@GeneratedValue
	private int id;
	
	@OneToMany(mappedBy = "team", cascade = CascadeType.ALL)
	private List<Player> players;
	
	@OneToMany(mappedBy = "team", cascade = CascadeType.PERSIST)
	private List<Post> posts;

	@OneToMany(mappedBy = "team", cascade = CascadeType.ALL)
	private List<Schedule> schedule;
}
