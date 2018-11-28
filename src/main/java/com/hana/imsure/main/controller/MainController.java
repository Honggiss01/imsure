package com.hana.imsure.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MainController {
	
	@GetMapping("/")
	public String home() {
		
		log.debug("index.jsp called");
		
		return "index";
	}
	
	@GetMapping("/mainPage")
	public String mainPage() {
		
		log.debug("mainPage.jsp called");
		
		return "components/main/mainPage";
	}
	
	@GetMapping("/loginPage")
	public String loginPage() {
		
		log.debug("loginPage.jsp called");
		
		return "components/user/loginPage";
	}
	
	@GetMapping("/demographicPage")
	public String demographicPage() {
		
		log.debug("demographicPage.jsp called");
		
		return "components/recommendation/demographicPage";
	}
	
	@GetMapping("/psychologicPage")
	public String psychologicPage() {
		
		log.debug("psychologicPage.jsp called");
		
		return "components/recommendation/psychologicPage";
	}
	
}
