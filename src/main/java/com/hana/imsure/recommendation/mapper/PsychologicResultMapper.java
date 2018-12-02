package com.hana.imsure.recommendation.mapper;

/**
 * 심리학적 보험 추천 결과 정보와 관련된 Mapper 인터페이스
 * 
 * @author 김홍기
 */
public interface PsychologicResultMapper {
	//심리학적 보험 추천 결과 저장하기
	public int create(String userId, String extraversion, String agreeableness, String conscientiousness,
						String neuroticism, String openness);
	//심리학적 보험 추천 결과 상세보기
	public void read(String insuranceId);
}
