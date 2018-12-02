package com.hana.imsure.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hana.imsure.user.domain.User;
import com.hana.imsure.user.service.UserService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class UserServiceTests {
	
	@Setter(onMethod_ = { @Autowired })
	private UserService service;
	
//	@Test
//	public void testRegister() {
//		log.info("Register Test...");
//		
//		String email = "test0005@naver.com";
//		String password = "abcd1234";
//		
//		service.register(email, password);
//	}
	
//	@Test
//	public void testUpdateRole() {
//		String userId = "5";
//		service.updateRole(userId);
//	}
	
	@Test
	public void testLogin() {
		log.info("Login Test...");
		
		String email = "test0005@naver.com";
		String password = "abcd1234";
		
		User user = service.login(email, password);
		log.info("유저객체" + user);
	}
}
