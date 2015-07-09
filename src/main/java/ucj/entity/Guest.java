package ucj.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Guest {

	@Id
	@GeneratedValue
	private int id;

	@OneToMany(mappedBy = "guest", cascade = CascadeType.ALL)
	private List<Game> games;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Game> getGames() {
		return games;
	}

	public void setGames(List<Game> games) {
		this.games = games;
	}

}
