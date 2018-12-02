package com.hana.imsure.user.mapper;

import org.apache.ibatis.annotations.Param;

import com.hana.imsure.user.domain.User;

/**
 * User와 관련된  Mapper 인터페이스
 * 
 * @author 김홍기
 */
public interface UserMapper {
	//회원가입
	public int create(@Param("email") String email, @Param("password") String password);
	//회원 권한 가져오기
	public String readRole(String email);
	//회원 권한 초기 설정
	public int createRole(String userId);
	//회원 권한 변경
	public int updateRole(String userId);
	//로그인
	public User certify(@Param("email") String email, @Param("password") String password);
}
