package com.adeveloperdiry;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class LoginController {

	@RequestMapping("/login")
    public String username(@RequestParam(value="username", required=true) String name, Model model) {
        model.addAttribute("username", name);
        return name;
    }
	
	public String password(@RequestParam(value="password", required=true) String word, Model model){
		model.addAttribute("username", word);
        return word;
	}
}
