package ucj.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;

import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Game")
public class Game extends Schedule {

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "guest")
	private Guest guest;

	public Guest getGuest() {
		return guest;
	}

	public void setGuest(Guest guest) {
		this.guest = guest;
	}

}
