package com.hana.imsure.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hana.imsure.user.domain.User;
import com.hana.imsure.user.mapper.UserMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

/**
 * User와 관련된 비즈니스 로직 수행을 위한 Service 객체
 * 
 * @author 김홍기
 */
@Log4j
@Service
@AllArgsConstructor
public class UserServiceImpl implements UserService{
	
	@Setter(onMethod_ = @Autowired)
	private UserMapper mapper;
	
	//회원가입
	@Transactional
	@Override
	public void register(String email, String password) {
		log.info("register..." + email);
		mapper.create(email, password);
	}

	//회원 권한 변경
	@Override
	public void updateRole(String userId) {
		log.info("updateRole..." + userId);
		mapper.updateRole(userId);
	}

	//로그인
	@Override
	public User login(String email, String password) {
		log.info("login..." + email);
		return mapper.certify(email, password);
	}
}
