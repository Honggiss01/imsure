package com.hana.imsure.recommendation.domain;

import lombok.Data;

/**
 * 심리학적 보험 추천 결과 정보를 관리를 위한 도메인 객체
 * 
 * @author 김홍기
 */
@Data
public class PsychologicResult {
	private String psychologicResultId;
	private String userId;
	private String extraversion;      //외향성
	private String agreeableness;     //친화성
	private String conscientiousness; //성실성
	private String neuroticism;       //신경성
	private String openness;          //개방성
	private String insuranceId;
	private String insuranceId2;
	private String insuranceId3;
	private String resultDate;
}
