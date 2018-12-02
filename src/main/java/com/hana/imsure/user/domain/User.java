package com.hana.imsure.user.domain;

import lombok.Data;

/**
 * User 기본 정보 관리를 위한 도메인 객체
 * 
 * @author 김홍기
 */
@Data
public class User {
	private String userId;
	private String email;
	private String password;
	private String regdate;
	private String authority;
}
