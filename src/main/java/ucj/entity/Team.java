package ucj.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

@Entity
public class Team {

	@Id
	@GeneratedValue
	private int id;

	@OneToMany(mappedBy = "team", cascade = CascadeType.ALL)
	private List<User> users;

	@OneToMany(mappedBy = "team", cascade = CascadeType.ALL)
	private List<Post> posts;

	@OneToMany(mappedBy = "team", cascade = CascadeType.ALL)
	private List<Schedule> schedule;

	@ManyToMany(mappedBy = "teams", cascade = CascadeType.ALL)
	private List<Sponsor> sponsors;

	@OneToMany(mappedBy = "team", cascade = CascadeType.ALL)
	private List<Player> players;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Post> getPosts() {
		return posts;
	}

	public void setPosts(List<Post> posts) {
		this.posts = posts;
	}

	public List<Schedule> getSchedule() {
		return schedule;
	}

	public void setSchedule(List<Schedule> schedule) {
		this.schedule = schedule;
	}

	public List<Sponsor> getSponsors() {
		return sponsors;
	}

	public void setSponsors(List<Sponsor> sponsors) {
		this.sponsors = sponsors;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public List<Player> getPlayers() {
		return players;
	}

	public void setPlayers(List<Player> players) {
		this.players = players;
	}

}
