package com.adeveloperdiry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class LoginController {

	@RequestMapping("/login")
    public String login() {
        return "login";
    }
	
//	public void ViewUser(@RequestBody User user,
//            HttpServletRequest request, HttpServletResponse response) {
//		
//		
//	}
//	public String password(@RequestParam(value="password", required=false) String word, Model model){
//		model.addAttribute("username", word);
//        return word;
//	}
}
