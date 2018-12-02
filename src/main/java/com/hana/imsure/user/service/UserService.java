package com.hana.imsure.user.service;

import com.hana.imsure.user.domain.User;

/**
 * User와 관련된 비즈니스 로직 수행을 위한 인터페이스
 * 
 * @author 김홍기
 */
public interface UserService {
	//회원가입
	public boolean register(String email, String password);
	//회원 권한 변경
	public boolean updateRole(String userId);
	//로그인
	public User login(String email, String password);
}
