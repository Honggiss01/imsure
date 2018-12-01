package com.hana.imsure.user.domain;

import lombok.Data;

/**
 * 이메일 인증을 위한 도메인 객체
 * 
 * @author 김홍기
 */
@Data
public class EmailValidation {
	private String validationId;
	private String userId;
	private String validationNumber;
	private String isValidated;
	private String type;
	private String createdDate;
}
