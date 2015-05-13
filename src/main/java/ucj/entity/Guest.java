package ucj.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Guest {
	
	@Id
	@GeneratedValue
	private int id;
	
	@OneToOne(fetch=FetchType.LAZY, mappedBy="guest")
	private Game game;

}
