package ucj.entity;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Game")
public class Game extends Schedule{
	
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="guest")
	private Guest guest;
	
}
