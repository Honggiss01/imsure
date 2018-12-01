package com.hana.imsure.user.domain;

import lombok.Data;

/**
 * User의 Role 정보 관리를 위한 도메인 객체
 * 
 * @author 김홍기
 */
@Data
public class Role {
	private String userId;
	private String authority;
}
