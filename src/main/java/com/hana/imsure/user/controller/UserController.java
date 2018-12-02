package com.hana.imsure.user.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.hana.imsure.user.domain.User;
import com.hana.imsure.user.service.UserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
 * User와 관련된 기능을 위한 컨트롤러
 * 
 * @author 김홍기
 */
@RestController
@Log4j
@AllArgsConstructor
public class UserController {
	
	private UserService service;
	
	//로그인 페이지
	@GetMapping("/all/loginPage")
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
	@PostMapping(value="/all/users",
			consumes="application/json",
			produces={ MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<Map<String, String>> register(@RequestParam("email") String email, @RequestParam("password") String password) {
		
		log.debug("이메일 : " + email);
		log.debug("비밀번호 : " + password);
		
		//회원가입 서비스 객체 호출
		boolean flag = service.register(email, password);
		
		Map<String, String> map = new HashMap<>();
		map.put("result", String.valueOf(flag));
		
		return flag == true
		? new ResponseEntity<>(map,HttpStatus.OK)
		: new ResponseEntity<>(HttpStatus.BAD_REQUEST);
	}
	
	//로그인
	@PostMapping(value="/all/login",
			consumes="application/json",
			produces={ MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<Map<String, String>> login(@RequestParam("email") String email, @RequestParam("password") String password) {
		
		log.debug("이메일 : " + email);
		log.debug("비밀번호 : " + password);
		
		//로그인 서비스 객체 호출
		User user = service.login(email, password);
		
		Map<String, String> map = new HashMap<>();
		map.put("userId", user.getUserId());
		map.put("email", user.getEmail());
		map.put("authority", user.getAuthority());
		
		return user != null
		? new ResponseEntity<>(map,HttpStatus.OK)
		: new ResponseEntity<>(HttpStatus.BAD_REQUEST);
	}
}
