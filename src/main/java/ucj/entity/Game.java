package ucj.entity;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
@DiscriminatorValue("2")
public class Game extends Schedule{

	private static final long serialVersionUID = 9072806448790858206L;
	
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="guest")
	private Guest guest;
	
}
