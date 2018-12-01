package com.hana.imsure.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hana.imsure.user.service.UserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
 * User와 관련된 기능을 위한 컨트롤러
 * 
 * @author 김홍기
 */
@Controller
@Log4j
@AllArgsConstructor
public class UserController {
	
	private UserService service;
	
	//로그인 페이지
	@GetMapping("/loginPage")
	public String loginPage() {
		log.debug("loginPage.jsp called...");
		
		return "components/user/loginPage";
	}
	
	//회원가입 페이지
	@GetMapping("/all/registerPage")
	public String registerPage() {
		log.debug("registerPage.jsp called...");
		
		return "components/user/registerPage";
	}
	
	//회원가입
	@PostMapping("/all/users")
	public String register(@RequestParam("email") String email, @RequestParam("password") String password) {
		log.debug("register called...");
		service.register(email, password);
		
		return "redirect:/components/main/mainPage";
	}
	
	//로그인
	
}
