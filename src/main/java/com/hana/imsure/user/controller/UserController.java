package com.hana.imsure.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.hana.imsure.user.service.UserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class UserController {
	
	private UserService service;
	
	@GetMapping("/loginPage")
	public String loginPage() {
		
		log.debug("loginPage.jsp called...");
		
		return "components/user/loginPage";
	}
	
	@PostMapping("/register")
	public String register(String email, String password, Model model) {
		service.login(email, password);
		return "loginPage";
	}
}
