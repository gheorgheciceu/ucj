package ucj.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="StaffMember")
public class StaffMember extends Person{
	
	@ManyToOne
	@JoinColumn(name = "team")
	private Team team;
	
}
