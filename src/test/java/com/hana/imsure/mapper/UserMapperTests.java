package com.hana.imsure.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.hana.imsure.user.domain.User;
import com.hana.imsure.user.mapper.UserMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Log4j
public class UserMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private UserMapper mapper;
	
//	@Test
//	public void testCreate() {
//	
//		log.info("회원가입 중...");
//		
//	    String email = "test0004@naver.com";
//	    String password = "abcd1234";
//	    
//	    mapper.create(email, password);
//	}
	
//	@Test
//	public void testReadRole() {
//	
//	    String email = "test0001@naver.com";
//	    
//	    String userId = mapper.readRole(email);
//	    log.info(userId);
//	}
	
//	@Test
//	public void testCreateRole() {
//		
//	    String userId = "4";
//	    
//	    mapper.createRole(userId);
//	}
	
//	@Test
//	public void testUpdateRole() {
//		
//	    String userId = "4";
//	    
//	    mapper.updateRole(userId);
//	}
	
	@Test
	public void testUpdateRole() {
		
		String email = "test0004@naver.com";
	    String password = "abcd1234";
	    
	    User user = mapper.certify(email, password);
	    log.info("유저객체..." + user);
	}
}
