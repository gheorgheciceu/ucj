package ucj.entity;

import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Entity
public class Post {

	@Id
	@GeneratedValue
	private int id;

	private String title;

	@ElementCollection
	private List<String> tags;

	private String content;

	@ElementCollection
	private List<CommonsMultipartFile> gallery;

	@ManyToOne
	@JoinColumn(name = "team")
	private Team team;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public List<String> getTags() {
		return tags;
	}

	public void setTags(List<String> tags) {
		this.tags = tags;
	}

	public List<CommonsMultipartFile> getGallery() {
		return gallery;
	}

	public void setGallery(List<CommonsMultipartFile> gallery) {
		this.gallery = gallery;
	}

}
