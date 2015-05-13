package ucj.entity;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue("1")
public class Practice extends Schedule{

	private static final long serialVersionUID = -3022384255505968511L;
	
//	@Id
//	@GeneratedValue
//	private int id;
	
	

}
