package ucj.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Sponsor {

	@Id
	@GeneratedValue
	private int id;
}
