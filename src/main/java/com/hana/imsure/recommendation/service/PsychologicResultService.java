package com.hana.imsure.recommendation.service;

/**
 * 심리학적 보험 추천 결과 정보와 관련된 비즈니스 로직 수행을 위한 인터페이스
 * 
 * @author 김홍기
 */
public interface PsychologicResultService {
	//심리학적 보험 추천 결과 저장하기
	public boolean savePsychologicResult(String userId, String extraversion, String agreeableness, String conscientiousness,
											String neuroticism, String openness);
	//심리학적 보험 추천 결과 상세보기
	public void psychologicResultDetail(String insuranceId);
}
