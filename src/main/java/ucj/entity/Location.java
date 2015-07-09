package ucj.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Entity
public class Location {

	@Id
	@GeneratedValue
	private int id;

	private String name;

	@ElementCollection
	private List<CommonsMultipartFile> gallery;

	private String address;

	@OneToMany(mappedBy = "location", cascade = CascadeType.ALL)
	private List<Schedule> schedules;

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

	public List<CommonsMultipartFile> getGallery() {
		return gallery;
	}

	public void setGallery(List<CommonsMultipartFile> gallery) {
		this.gallery = gallery;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public List<Schedule> getSchedules() {
		return schedules;
	}

	public void setSchedules(List<Schedule> schedules) {
		this.schedules = schedules;
	}
	
	

}
