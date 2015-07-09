package ucj.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Player")
public class Player extends User {

	private String position;

	@OneToMany
	@JoinColumn(name = "teamId")
	private List<Team> previousTeams;

	@ManyToOne
	@JoinColumn(name = "teamID")
	private Team team;

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public List<Team> getPreviousTeams() {
		return previousTeams;
	}

	public void setPreviousTeams(List<Team> previousTeams) {
		this.previousTeams = previousTeams;
	}
	
	

}
