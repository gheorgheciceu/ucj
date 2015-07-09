package ucj.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Entity
public class Sponsor {

	@Id
	@GeneratedValue
	private int id;

	private String name;

	@ElementCollection
	private List<CommonsMultipartFile> logos;

	private String website;

	@ManyToMany(cascade = CascadeType.REMOVE)
	@JoinTable(name = "TeamSponsors", joinColumns = @JoinColumn(name = "sponsor_id"), inverseJoinColumns = @JoinColumn(name = "team_id"))
	private List<Team> teams;

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

	public List<CommonsMultipartFile> getLogos() {
		return logos;
	}

	public void setLogos(List<CommonsMultipartFile> logos) {
		this.logos = logos;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public List<Team> getTeams() {
		return teams;
	}

	public void setTeams(List<Team> teams) {
		this.teams = teams;
	}

}
