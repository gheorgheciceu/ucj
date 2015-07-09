package ucj.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "Practice")
public class Practice extends Schedule {

	private String content;

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}
