package ucj.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

@Entity
public class Location {

	@Id
	@GeneratedValue
	private int id;
	
	@OneToOne
    @PrimaryKeyJoinColumn
    private Schedule schedule;
	
}
