package ucj.entity;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class MainSlider {

	@Id
	@GeneratedValue
	private int id;

	private CommonsMultipartFile image;

	private String title;

	private String subTitle;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public CommonsMultipartFile getImage() {
		return image;
	}

	public void setImage(CommonsMultipartFile image) {
		this.image = image;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSubTitle() {
		return subTitle;
	}

	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}

}
