package com.adeveloperdiry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.adeveloperdiry.UserRepository;

@Controller
@RequestMapping(path="/data")
public class DatabaseController {
	@Autowired
	private UserRepository userRepository;
	@GetMapping(path="/add")
	public @ResponseBody String addNewUser(@RequestParam String name,
			 @RequestParam String email) {
		return name + email;
	}
}
