package ucj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class IndexController {

//	@Autowired
//	private UserGetter userGetter;

	@RequestMapping("/")
	public String getIndex(Model model) {

	//	model.addAttribute("securityUser", userGetter.getLoggedUser());
		return "index";
	}

	@RequestMapping("/login")
	public String getMyLogin() {

		return "login";
	}
}
